require 'test_helper'

class Admin::ItemCategoriesControllerTest < ActionController::TestCase
  setup do
    @item_category = item_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_category" do
    assert_difference('ItemCategory.count') do
      post :create, item_category: { cite_key: @item_category.cite_key, name: @item_category.name, parent_id: @item_category.parent_id }
    end

    assert_redirected_to admin_item_category_path(assigns(:item_category))
  end

  test "should show item_category" do
    get :show, id: @item_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_category
    assert_response :success
  end

  test "should update item_category" do
    patch :update, id: @item_category, item_category: { cite_key: @item_category.cite_key, name: @item_category.name, parent_id: @item_category.parent_id }
    assert_redirected_to admin_item_category_path(assigns(:item_category))
  end

  test "should destroy item_category" do
    assert_difference('ItemCategory.count', -1) do
      delete :destroy, id: @item_category
    end

    assert_redirected_to admin_item_categories_path
  end
end
