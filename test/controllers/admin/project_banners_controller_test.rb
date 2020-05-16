require 'test_helper'

class Admin::ProjectBannersControllerTest < ActionController::TestCase
  setup do
    @project_banner = project_banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_banner" do
    assert_difference('ProjectBanner.count') do
      post :create, project_banner: { order: @project_banner.order, path: @project_banner.path }
    end

    assert_redirected_to admin_project_banner_path(assigns(:project_banner))
  end

  test "should show project_banner" do
    get :show, id: @project_banner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_banner
    assert_response :success
  end

  test "should update project_banner" do
    patch :update, id: @project_banner, project_banner: { order: @project_banner.order, path: @project_banner.path }
    assert_redirected_to admin_project_banner_path(assigns(:project_banner))
  end

  test "should destroy project_banner" do
    assert_difference('ProjectBanner.count', -1) do
      delete :destroy, id: @project_banner
    end

    assert_redirected_to admin_project_banners_path
  end
end
