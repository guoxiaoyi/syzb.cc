require 'test_helper'

class Admin::MobileBannersControllerTest < ActionController::TestCase
  setup do
    @mobile_banner = mobile_banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobile_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobile_banner" do
    assert_difference('MobileBanner.count') do
      post :create, mobile_banner: { order: @mobile_banner.order, path: @mobile_banner.path, url: @mobile_banner.url }
    end

    assert_redirected_to admin_mobile_banner_path(assigns(:mobile_banner))
  end

  test "should show mobile_banner" do
    get :show, id: @mobile_banner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mobile_banner
    assert_response :success
  end

  test "should update mobile_banner" do
    patch :update, id: @mobile_banner, mobile_banner: { order: @mobile_banner.order, path: @mobile_banner.path, url: @mobile_banner.url }
    assert_redirected_to admin_mobile_banner_path(assigns(:mobile_banner))
  end

  test "should destroy mobile_banner" do
    assert_difference('MobileBanner.count', -1) do
      delete :destroy, id: @mobile_banner
    end

    assert_redirected_to admin_mobile_banners_path
  end
end
