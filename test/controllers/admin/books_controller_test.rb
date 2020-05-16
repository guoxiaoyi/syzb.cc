require 'test_helper'

class Admin::BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { categoryable_id: @book.categoryable_id, customeize_order: @book.customeize_order, detail: @book.detail, manager_id: @book.manager_id, name: @book.name, online: @book.online }
    end

    assert_redirected_to admin_book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { categoryable_id: @book.categoryable_id, customeize_order: @book.customeize_order, detail: @book.detail, manager_id: @book.manager_id, name: @book.name, online: @book.online }
    assert_redirected_to admin_book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to admin_books_path
  end
end
