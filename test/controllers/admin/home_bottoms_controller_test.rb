require 'test_helper'

class Admin::HomeBottomsControllerTest < ActionController::TestCase
  setup do
    @home_bottom = home_bottoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_bottoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_bottom" do
    assert_difference('HomeBottom.count') do
      post :create, home_bottom: { path: @home_bottom.path, position: @home_bottom.position }
    end

    assert_redirected_to admin_home_bottom_path(assigns(:home_bottom))
  end

  test "should show home_bottom" do
    get :show, id: @home_bottom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_bottom
    assert_response :success
  end

  test "should update home_bottom" do
    patch :update, id: @home_bottom, home_bottom: { path: @home_bottom.path, position: @home_bottom.position }
    assert_redirected_to admin_home_bottom_path(assigns(:home_bottom))
  end

  test "should destroy home_bottom" do
    assert_difference('HomeBottom.count', -1) do
      delete :destroy, id: @home_bottom
    end

    assert_redirected_to admin_home_bottoms_path
  end
end
