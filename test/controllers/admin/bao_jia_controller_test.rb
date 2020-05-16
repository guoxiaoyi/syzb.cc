require 'test_helper'

class Admin::BaoJiaControllerTest < ActionController::TestCase
  setup do
    @bao_jium = bao_jia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bao_jia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bao_jium" do
    assert_difference('BaoJium.count') do
      post :create, bao_jium: { fg_id: @bao_jium.fg_id, hx: @bao_jium.hx, name: @bao_jium.name, tel: @bao_jium.tel }
    end

    assert_redirected_to admin_bao_jium_path(assigns(:bao_jium))
  end

  test "should show bao_jium" do
    get :show, id: @bao_jium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bao_jium
    assert_response :success
  end

  test "should update bao_jium" do
    patch :update, id: @bao_jium, bao_jium: { fg_id: @bao_jium.fg_id, hx: @bao_jium.hx, name: @bao_jium.name, tel: @bao_jium.tel }
    assert_redirected_to admin_bao_jium_path(assigns(:bao_jium))
  end

  test "should destroy bao_jium" do
    assert_difference('BaoJium.count', -1) do
      delete :destroy, id: @bao_jium
    end

    assert_redirected_to admin_bao_jia_path
  end
end
