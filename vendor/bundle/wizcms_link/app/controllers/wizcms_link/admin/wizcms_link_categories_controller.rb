require_dependency "wizcms_link/admin/application_controller"

module WizcmsLink
  class Admin::WizcmsLinkCategoriesController < Admin::ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    # GET /admin/categories
    def index
      @categories = Category.all
    end

    # GET /admin/categories/1
    def show
    end

    # GET /admin/categories/new
    def new
      @category = current_manager.wizcms_link_categories.new
    end

    # GET /admin/categories/1/edit
    def edit
    end

    # POST /admin/categories
    def create
      @category = current_manager.wizcms_link_categories.new(category_params)

      if @category.save
        redirect_to [:admin_wizcms_link,@category], notice: 'Category was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /admin/categories/1
    def update
      if @category.update(category_params)
        redirect_to [:admin_wizcms_link, @category], notice: 'Category was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /admin/categories/1
    def destroy
      @category.destroy
      redirect_to admin_wizcms_link_categories_path, notice: 'Category was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:name, :custom_order, :parent_id, :brief, :published, :cite_key)
      end
  end
end
