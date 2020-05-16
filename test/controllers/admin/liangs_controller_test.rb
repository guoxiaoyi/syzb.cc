require 'test_helper'

class Admin::LiangsControllerTest < ActionController::TestCase
  setup do
    @liang = liangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liang" do
    assert_difference('Liang.count') do
      post :create, liang: { name: @liang.name, tel: @liang.tel }
    end

    assert_redirected_to admin_liang_path(assigns(:liang))
  end

  test "should show liang" do
    get :show, id: @liang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liang
    assert_response :success
  end

  test "should update liang" do
    patch :update, id: @liang, liang: { name: @liang.name, tel: @liang.tel }
    assert_redirected_to admin_liang_path(assigns(:liang))
  end

  test "should destroy liang" do
    assert_difference('Liang.count', -1) do
      delete :destroy, id: @liang
    end

    assert_redirected_to admin_liangs_path
  end
end
