class Admin::BooksController < Admin::ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /admin/books
  # GET /admin/books.json
  def index
    @books = Book.all.order(customeize_order: :desc)
  end

  # GET /admin/books/1
  # GET /admin/books/1.json
  def show
  end

  # GET /admin/books/new
  def new
    @book = Book.new
  end

  # GET /admin/books/1/edit
  def edit
  end

  # POST /admin/books
  # POST /admin/books.json
  def create
    @book = category.books.new(book_params.merge(manager_id: current_manager.id))

    respond_to do |format|
      if @book.save
        format.html { redirect_to [:admin, @book], notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book }
      else
        format.html { render action: 'new' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/books/1
  # PATCH/PUT /admin/books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to [:admin, @book], notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/books/1
  # DELETE /admin/books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to admin_books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:name, :manager_id, :categoryable_id, :price, :detail, :stock, :online, :customeize_order, :brief,
        pictures_attributes: [ :_destroy, :id, :product_id, :url ,:position])
    end
    def category
      if book_params[:categoryable_id].blank?
        ItemCategory.new
      else
        ItemCategory.find(book_params[:categoryable_id])
      end
    end
end
