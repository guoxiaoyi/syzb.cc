class TabsController < ApplicationController
  # before_action :is_tourist, except: [:article]
  # layout :set_layout
  # before_action :get_user_agent
  # def index
  #   unless params[:key].blank?
  #   @articles = WizcmsArticle::Article.all.where('`content` like ? OR `title` like ?', "%#{params[:key]}%","%#{params[:key]}%")
  #   @reslut = @articles + Product.all.where('`content` like ? OR `title` like ?', "%#{params[:key]}%","%#{params[:key]}%") + WorkSite.all.where('`build_before` like ? OR `building` like ? OR `build_after` like ? OR `title` like ?', "%#{params[:key]}%","%#{params[:key]}%","%#{params[:key]}%","%#{params[:key]}%")
  #   # @reslut = @reslut.page( params[:page] )
  #   end
  # end

  def article
    render json: {article: WizcmsArticle::Article.find(5).as_json}
  end
  def service
    courses = WizcmsLink::Category.find_by(cite_key: 'course').links.order(custom_order: :desc).as_json
    current_user
    products =  if current_user
                  Product.where(online: true, recommendation: true).order(customize_order: :desc).map do |product|
                    _dis = product.categoryable.cite_key == 'j' ? BigDecimal.new(0) : BigDecimal.new(current_user.discount * product.price)
                    { id: product.id,
                      name: product.name,
                      price: BigDecimal.new(product.price - _dis),
                      discount: _dis,
                      picture: product.pictures.find_by(position: 0).try(:url)
                    }
                  end
                else
                  Product.where(online: true, recommendation: true).order(customize_order: :desc).map do |product|
                    _dis = BigDecimal.new(0)
                    { id: product.id,
                      name: product.name,
                      price: BigDecimal.new(product.price - _dis),
                      discount: _dis,
                      picture: product.pictures.find_by(position: 0).try(:url)
                    }
                  end
                end

    render json: {courses: courses, products: products.as_json}
  end

  def home
    recommends = WizcmsLink::Category.find_by(cite_key: 'recommend').links.order(custom_order: :desc).as_json
    articles = if current_user
      current_user.manager.wizcms_article_categories.find_by(cite_key: "activity_article").get_articles_with_chidren.where(hotspot: true, published: true).order(customeize_order: :desc).limit(5).as_json
    else
      WizcmsArticle::ArticleCategory.find_by(cite_key: "activity_article").get_articles_with_chidren.where(hotspot: true, published: true).order(customeize_order: :desc).limit(5).as_json
    end
    articles.map { |e| e['article_category_id']  = WizcmsArticle::ArticleCategory.find(e['article_category_id']).name }
    activities = if current_user
      current_user.manager.activities.where(hotspot: true).order(customize_order: :desc).limit(5).as_json
    else
      Activity.where(hotspot: true).order(customize_order: :desc).limit(5).as_json
    end
    activities.map { |e| e['categoryable_id']  = ItemCategory.find(e['categoryable_id']).name }
    nodes = Node.all
    notes = Note.where(recommendation: true).order(updated_at: :desc).limit(5)
    render json: {articles: articles, activities: activities, nodes: nodes, notes: notes, recommends: recommends}
  end
end
