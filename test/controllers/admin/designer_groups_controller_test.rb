require 'test_helper'

class Admin::DesignerGroupsControllerTest < ActionController::TestCase
  setup do
    @designer_group = designer_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designer_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designer_group" do
    assert_difference('DesignerGroup.count') do
      post :create, designer_group: { name: @designer_group.name }
    end

    assert_redirected_to admin_designer_group_path(assigns(:designer_group))
  end

  test "should show designer_group" do
    get :show, id: @designer_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designer_group
    assert_response :success
  end

  test "should update designer_group" do
    patch :update, id: @designer_group, designer_group: { name: @designer_group.name }
    assert_redirected_to admin_designer_group_path(assigns(:designer_group))
  end

  test "should destroy designer_group" do
    assert_difference('DesignerGroup.count', -1) do
      delete :destroy, id: @designer_group
    end

    assert_redirected_to admin_designer_groups_path
  end
end
