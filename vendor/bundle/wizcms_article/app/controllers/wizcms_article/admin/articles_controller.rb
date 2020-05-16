require_dependency "wizcms_article/application_controller"

module WizcmsArticle
  class Admin::ArticlesController < Admin::ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy, :to_page]

    # GET /admin/articles
    def index
      @article_search = ArticleSearch.new( params[:article_search] )
      @article_search.valid? if params[:article_search]
      @articles = Article.category(@article_search.article_category_id)
                  .search_title(@article_search.title)
                  .search_content(@article_search.content)
                  .order("published_at desc, updated_at desc").page( params[:page] )
    end

    # GET /admin/articles/1
    def show
    end

    def to_page
      @page = Page.create( title: @article.title, content: @article.content)
      redirect_to [:admin, @page]
    end


    # GET /admin/articles/new
    def new
      @article = Article.new
    end

    # GET /admin/articles/1/edit
    def edit
    end

    # POST /admin/articles
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to [:admin, @article], notice: 'Article was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /admin/articles/1
    def update
      if @article.update(article_params)
        redirect_to [:admin, @article], notice: 'Article was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /admin/articles/1
    def destroy
      @article.destroy
      redirect_to admin_articles_url, notice: 'Article was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = Article.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def article_params
        params.require(:article).permit(:title, :author, :copy_from, :cite_key, :published, :published_at, :brief, :content, :article_category_id, :hotspot, :mobile_content, :picture, :customeize_order)
      end
  end
end
