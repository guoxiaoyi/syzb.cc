require_dependency "wizcms_article/application_controller"

module WizcmsArticle
  class Admin::ArticleCategoriesController < Admin::ApplicationController
    before_action :set_article_category, only: [:show, :edit, :update, :destroy]

    # GET /admin/article_categories
    # GET /admin/article_categories.json
    def index
      # @article_categories = ArticleCategory.all
      @article_categories = ArticleCategory.tree
    end

    # GET /admin/article_categories/1
    # GET /admin/article_categories/1.json
    def show
    end

    # GET /admin/article_categories/new
    def new
      @article_category = ArticleCategory.new
    end

    # GET /admin/article_categories/1/edit
    def edit
    end

    # POST /admin/article_categories
    # POST /admin/article_categories.json
    def create
      @article_category = ArticleCategory.new(article_category_params)

      respond_to do |format|
        if @article_category.save
          format.html { redirect_to [:admin, @article_category], notice: 'Article category was successfully created.' }
          format.json { render action: 'show', status: :created, location: @article_category }
        else
          format.html { render action: 'new' }
          format.json { render json: @article_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/article_categories/1
    # PATCH/PUT /admin/article_categories/1.json
    def update
      respond_to do |format|
        if @article_category.update(article_category_params)
          format.html { redirect_to [:admin, @article_category], notice: 'Article category was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @article_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/article_categories/1
    # DELETE /admin/article_categories/1.json
    def destroy
      @article_category.destroy
      respond_to do |format|
        format.html { redirect_to admin_article_categories_url, notice: 'Article category was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_article_category
        @article_category = ArticleCategory.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def article_category_params
        params.require(:article_category).permit(:name, :custom_order, :parent_id, :brief, :published, :cite_key)
      end
  end
end