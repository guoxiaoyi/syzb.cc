require 'test_helper'

class Admin::YsControllerTest < ActionController::TestCase
  setup do
    @y = ys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create y" do
    assert_difference('Y.count') do
      post :create, y: { title: @y.title }
    end

    assert_redirected_to admin_y_path(assigns(:y))
  end

  test "should show y" do
    get :show, id: @y
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @y
    assert_response :success
  end

  test "should update y" do
    patch :update, id: @y, y: { title: @y.title }
    assert_redirected_to admin_y_path(assigns(:y))
  end

  test "should destroy y" do
    assert_difference('Y.count', -1) do
      delete :destroy, id: @y
    end

    assert_redirected_to admin_ys_path
  end
end
