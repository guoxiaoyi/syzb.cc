class Admin::ProductOrdersController < Admin::ApplicationController
  before_action :set_book_order, only: [:show, :edit, :update, :destroy]

  # GET /admin/book_orders
  # GET /admin/book_orders.json
  def index
    @book_orders = Order.where(categoryable_type: 'Product').all.order(created_at: :desc)
    ids = params[:ids].blank? ? [] : params[:ids].split(",")
    @book_orders_xlsx = Order.where(categoryable_type: 'Product').where(id: ids).order(created_at: :desc)
    respond_to do |format|
      format.html{}
      format.xlsx {}
    end

  end

  # GET /admin/book_orders/1
  # GET /admin/book_orders/1.json
  def show
  end

  # GET /admin/book_orders/new
  def new
    @book_order = Order.where(categoryable_type: 'Product').new
  end

  # GET /admin/book_orders/1/edit
  def edit
  end

  # POST /admin/book_orders
  # POST /admin/book_orders.json
  def create
    @book_order = Order.where(categoryable_type: 'Product').new(book_order_params)

    respond_to do |format|
      if @book_order.save
        format.html { redirect_to admin_product_orders_path, notice: 'Book order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/book_orders/1
  # PATCH/PUT /admin/book_orders/1.json
  def update
    respond_to do |format|
      if @book_order.update(book_order_params)
        format.html { redirect_to admin_product_orders_path, notice: 'Book order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/book_orders/1
  # DELETE /admin/book_orders/1.json
  def destroy
    @book_order.destroy
    respond_to do |format|
      format.html { redirect_to admin_book_orders_url, notice: 'Book order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_order
      @book_order = Order.where(categoryable_type: 'Product').find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_order_params
      params.require(:order).permit(:code, :total_price, :pick_up_at,:pick_up_ed, :pick_up_token, :status)
    end
end
