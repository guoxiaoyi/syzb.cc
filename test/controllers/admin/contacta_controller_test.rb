require 'test_helper'

class Admin::ContactaControllerTest < ActionController::TestCase
  setup do
    @contact_a = contact_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_a" do
    assert_difference('ContactA.count') do
      post :create, contact_a: { name: @contact_a.name, tel: @contact_a.tel, zone: @contact_a.zone }
    end

    assert_redirected_to admin_contact_a_path(assigns(:contact_a))
  end

  test "should show contact_a" do
    get :show, id: @contact_a
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_a
    assert_response :success
  end

  test "should update contact_a" do
    patch :update, id: @contact_a, contact_a: { name: @contact_a.name, tel: @contact_a.tel, zone: @contact_a.zone }
    assert_redirected_to admin_contact_a_path(assigns(:contact_a))
  end

  test "should destroy contact_a" do
    assert_difference('ContactA.count', -1) do
      delete :destroy, id: @contact_a
    end

    assert_redirected_to admin_contact_as_path
  end
end
