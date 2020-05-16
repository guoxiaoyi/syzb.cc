require 'test_helper'

class Admin::TaoCansControllerTest < ActionController::TestCase
  setup do
    @tao_can = tao_cans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tao_cans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tao_can" do
    assert_difference('TaoCan.count') do
      post :create, tao_can: { mj_id: @tao_can.mj_id, name: @tao_can.name, taocan_type: @tao_can.taocan_type, tel: @tao_can.tel }
    end

    assert_redirected_to admin_tao_can_path(assigns(:tao_can))
  end

  test "should show tao_can" do
    get :show, id: @tao_can
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tao_can
    assert_response :success
  end

  test "should update tao_can" do
    patch :update, id: @tao_can, tao_can: { mj_id: @tao_can.mj_id, name: @tao_can.name, taocan_type: @tao_can.taocan_type, tel: @tao_can.tel }
    assert_redirected_to admin_tao_can_path(assigns(:tao_can))
  end

  test "should destroy tao_can" do
    assert_difference('TaoCan.count', -1) do
      delete :destroy, id: @tao_can
    end

    assert_redirected_to admin_tao_cans_path
  end
end
