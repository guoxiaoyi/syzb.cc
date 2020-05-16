require 'test_helper'

class Admin::ZhanTingsControllerTest < ActionController::TestCase
  setup do
    @zhan_ting = zhan_tings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zhan_tings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zhan_ting" do
    assert_difference('ZhanTing.count') do
      post :create, zhan_ting: { order: @zhan_ting.order, path: @zhan_ting.path }
    end

    assert_redirected_to admin_zhan_ting_path(assigns(:zhan_ting))
  end

  test "should show zhan_ting" do
    get :show, id: @zhan_ting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zhan_ting
    assert_response :success
  end

  test "should update zhan_ting" do
    patch :update, id: @zhan_ting, zhan_ting: { order: @zhan_ting.order, path: @zhan_ting.path }
    assert_redirected_to admin_zhan_ting_path(assigns(:zhan_ting))
  end

  test "should destroy zhan_ting" do
    assert_difference('ZhanTing.count', -1) do
      delete :destroy, id: @zhan_ting
    end

    assert_redirected_to admin_zhan_tings_path
  end
end
