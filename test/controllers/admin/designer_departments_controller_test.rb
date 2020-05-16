require 'test_helper'

class Admin::DesignerDepartmentsControllerTest < ActionController::TestCase
  setup do
    @designer_department = designer_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designer_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designer_department" do
    assert_difference('DesignerDepartment.count') do
      post :create, designer_department: { designer_group_id: @designer_department.designer_group_id, name: @designer_department.name }
    end

    assert_redirected_to admin_designer_department_path(assigns(:designer_department))
  end

  test "should show designer_department" do
    get :show, id: @designer_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designer_department
    assert_response :success
  end

  test "should update designer_department" do
    patch :update, id: @designer_department, designer_department: { designer_group_id: @designer_department.designer_group_id, name: @designer_department.name }
    assert_redirected_to admin_designer_department_path(assigns(:designer_department))
  end

  test "should destroy designer_department" do
    assert_difference('DesignerDepartment.count', -1) do
      delete :destroy, id: @designer_department
    end

    assert_redirected_to admin_designer_departments_path
  end
end
