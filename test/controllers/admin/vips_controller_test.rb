require 'test_helper'

class Admin::VipsControllerTest < ActionController::TestCase
  setup do
    @vip = vips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip" do
    assert_difference('Vip.count') do
      post :create, vip: { levels: @vip.levels, name: @vip.name, parent_id: @vip.parent_id, price: @vip.price }
    end

    assert_redirected_to admin_vip_path(assigns(:vip))
  end

  test "should show vip" do
    get :show, id: @vip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vip
    assert_response :success
  end

  test "should update vip" do
    patch :update, id: @vip, vip: { levels: @vip.levels, name: @vip.name, parent_id: @vip.parent_id, price: @vip.price }
    assert_redirected_to admin_vip_path(assigns(:vip))
  end

  test "should destroy vip" do
    assert_difference('Vip.count', -1) do
      delete :destroy, id: @vip
    end

    assert_redirected_to admin_vips_path
  end
end
