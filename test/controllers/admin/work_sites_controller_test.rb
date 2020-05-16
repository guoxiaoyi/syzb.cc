require 'test_helper'

class Admin::WorkSitesControllerTest < ActionController::TestCase
  setup do
    @work_site = work_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_site" do
    assert_difference('WorkSite.count') do
      post :create, work_site: { address: @work_site.address, build_after: @work_site.build_after, build_before: @work_site.build_before, building: @work_site.building, designer_id: @work_site.designer_id, fg_id: @work_site.fg_id, mj: @work_site.mj, title: @work_site.title }
    end

    assert_redirected_to admin_work_site_path(assigns(:work_site))
  end

  test "should show work_site" do
    get :show, id: @work_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_site
    assert_response :success
  end

  test "should update work_site" do
    patch :update, id: @work_site, work_site: { address: @work_site.address, build_after: @work_site.build_after, build_before: @work_site.build_before, building: @work_site.building, designer_id: @work_site.designer_id, fg_id: @work_site.fg_id, mj: @work_site.mj, title: @work_site.title }
    assert_redirected_to admin_work_site_path(assigns(:work_site))
  end

  test "should destroy work_site" do
    assert_difference('WorkSite.count', -1) do
      delete :destroy, id: @work_site
    end

    assert_redirected_to admin_work_sites_path
  end
end
