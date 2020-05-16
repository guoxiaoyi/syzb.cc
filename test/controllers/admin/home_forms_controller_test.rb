require 'test_helper'

class Admin::HomeFormsControllerTest < ActionController::TestCase
  setup do
    @home_form = home_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_form" do
    assert_difference('HomeForm.count') do
      post :create, home_form: { name: @home_form.name, tel: @home_form.tel }
    end

    assert_redirected_to admin_home_form_path(assigns(:home_form))
  end

  test "should show home_form" do
    get :show, id: @home_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_form
    assert_response :success
  end

  test "should update home_form" do
    patch :update, id: @home_form, home_form: { name: @home_form.name, tel: @home_form.tel }
    assert_redirected_to admin_home_form_path(assigns(:home_form))
  end

  test "should destroy home_form" do
    assert_difference('HomeForm.count', -1) do
      delete :destroy, id: @home_form
    end

    assert_redirected_to admin_home_forms_path
  end
end
