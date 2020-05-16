require 'test_helper'

class Admin::DesignerContactsControllerTest < ActionController::TestCase
  setup do
    @designer_contact = designer_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designer_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designer_contact" do
    assert_difference('DesignerContact.count') do
      post :create, designer_contact: { datetime: @designer_contact.datetime, mj: @designer_contact.mj, name: @designer_contact.name, tel: @designer_contact.tel, zone: @designer_contact.zone }
    end

    assert_redirected_to admin_designer_contact_path(assigns(:designer_contact))
  end

  test "should show designer_contact" do
    get :show, id: @designer_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designer_contact
    assert_response :success
  end

  test "should update designer_contact" do
    patch :update, id: @designer_contact, designer_contact: { datetime: @designer_contact.datetime, mj: @designer_contact.mj, name: @designer_contact.name, tel: @designer_contact.tel, zone: @designer_contact.zone }
    assert_redirected_to admin_designer_contact_path(assigns(:designer_contact))
  end

  test "should destroy designer_contact" do
    assert_difference('DesignerContact.count', -1) do
      delete :destroy, id: @designer_contact
    end

    assert_redirected_to admin_designer_contacts_path
  end
end
