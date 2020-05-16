require 'test_helper'

class Admin::YuSansControllerTest < ActionController::TestCase
  setup do
    @yu_san = yu_sans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yu_sans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yu_san" do
    assert_difference('YuSan.count') do
      post :create, yu_san: { title: @yu_san.title }
    end

    assert_redirected_to admin_yu_san_path(assigns(:yu_san))
  end

  test "should show yu_san" do
    get :show, id: @yu_san
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yu_san
    assert_response :success
  end

  test "should update yu_san" do
    patch :update, id: @yu_san, yu_san: { title: @yu_san.title }
    assert_redirected_to admin_yu_san_path(assigns(:yu_san))
  end

  test "should destroy yu_san" do
    assert_difference('YuSan.count', -1) do
      delete :destroy, id: @yu_san
    end

    assert_redirected_to admin_yu_sans_path
  end
end
