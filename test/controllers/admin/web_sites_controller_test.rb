require 'test_helper'

class Admin::WebSitesControllerTest < ActionController::TestCase
  setup do
    @web_site = web_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_site" do
    assert_difference('WebSite.count') do
      post :create, web_site: { description: @web_site.description, keywords: @web_site.keywords, qq: @web_site.qq, qrcode: @web_site.qrcode, service: @web_site.service, tel: @web_site.tel, title: @web_site.title }
    end

    assert_redirected_to admin_web_site_path(assigns(:web_site))
  end

  test "should show web_site" do
    get :show, id: @web_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_site
    assert_response :success
  end

  test "should update web_site" do
    patch :update, id: @web_site, web_site: { description: @web_site.description, keywords: @web_site.keywords, qq: @web_site.qq, qrcode: @web_site.qrcode, service: @web_site.service, tel: @web_site.tel, title: @web_site.title }
    assert_redirected_to admin_web_site_path(assigns(:web_site))
  end

  test "should destroy web_site" do
    assert_difference('WebSite.count', -1) do
      delete :destroy, id: @web_site
    end

    assert_redirected_to admin_web_sites_path
  end
end
