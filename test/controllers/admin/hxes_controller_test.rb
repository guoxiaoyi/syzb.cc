require 'test_helper'

class Admin::HxesControllerTest < ActionController::TestCase
  setup do
    @hx = hxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hx" do
    assert_difference('Hx.count') do
      post :create, hx: { title: @hx.title }
    end

    assert_redirected_to admin_hx_path(assigns(:hx))
  end

  test "should show hx" do
    get :show, id: @hx
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hx
    assert_response :success
  end

  test "should update hx" do
    patch :update, id: @hx, hx: { title: @hx.title }
    assert_redirected_to admin_hx_path(assigns(:hx))
  end

  test "should destroy hx" do
    assert_difference('Hx.count', -1) do
      delete :destroy, id: @hx
    end

    assert_redirected_to admin_hxes_path
  end
end
