class ArticlesController < ApplicationController
  before_action :is_tourist, except: [:index, :show]
  helper WizcmsArticle::ArticlesHelper

  def index
    current_user ||= User.new(manager_id: Manager.first.id)
    @articles = current_user.manager.wizcms_article_categories.find_by(cite_key: "activity_article").get_articles_with_chidren
  end

  def show
    @article = WizcmsArticle::Article.get( params[:id] )
  end

  private
    def set_article_category
      @article_category = WizcmsArticle::ArticleCategory.get( params[:article_category_id] )
    end
end
