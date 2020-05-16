require 'test_helper'

class Admin::MjsControllerTest < ActionController::TestCase
  setup do
    @mj = mjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mj" do
    assert_difference('Mj.count') do
      post :create, mj: { title: @mj.title }
    end

    assert_redirected_to admin_mj_path(assigns(:mj))
  end

  test "should show mj" do
    get :show, id: @mj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mj
    assert_response :success
  end

  test "should update mj" do
    patch :update, id: @mj, mj: { title: @mj.title }
    assert_redirected_to admin_mj_path(assigns(:mj))
  end

  test "should destroy mj" do
    assert_difference('Mj.count', -1) do
      delete :destroy, id: @mj
    end

    assert_redirected_to admin_mjs_path
  end
end
