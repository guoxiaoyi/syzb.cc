class Admin::ItemCategoriesController < Admin::ApplicationController
  before_action :set_item_category, only: [:show, :edit, :update, :destroy]

  # GET /admin/item_categories
  # GET /admin/item_categories.json
  def index
    @item_categories = ItemCategory.all
  end

  # GET /admin/item_categories/1
  # GET /admin/item_categories/1.json
  def show
  end

  # GET /admin/item_categories/new
  def new
    @item_category = current_manager.item_categories.new
  end

  # GET /admin/item_categories/1/edit
  def edit
  end

  # POST /admin/item_categories
  # POST /admin/item_categories.json
  def create
    @item_category = current_manager.item_categories.new(item_category_params)

    respond_to do |format|
      if @item_category.save
        format.html { redirect_to [:admin, @item_category], notice: 'Item category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/item_categories/1
  # PATCH/PUT /admin/item_categories/1.json
  def update
    respond_to do |format|
      if @item_category.update(item_category_params)
        format.html { redirect_to [:admin, @item_category], notice: 'Item category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/item_categories/1
  # DELETE /admin/item_categories/1.json
  def destroy
    @item_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_item_categories_url, notice: 'Item category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_category
      @item_category = ItemCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_category_params
      params.require(:item_category).permit(:name, :cite_key, :parent_id)
    end
end
