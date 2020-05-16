require 'test_helper'

class Admin::YusuansControllerTest < ActionController::TestCase
  setup do
    @yusuan = yusuans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yusuans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yusuan" do
    assert_difference('Yusuan.count') do
      post :create, yusuan: { title: @yusuan.title }
    end

    assert_redirected_to admin_yusuan_path(assigns(:yusuan))
  end

  test "should show yusuan" do
    get :show, id: @yusuan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yusuan
    assert_response :success
  end

  test "should update yusuan" do
    patch :update, id: @yusuan, yusuan: { title: @yusuan.title }
    assert_redirected_to admin_yusuan_path(assigns(:yusuan))
  end

  test "should destroy yusuan" do
    assert_difference('Yusuan.count', -1) do
      delete :destroy, id: @yusuan
    end

    assert_redirected_to admin_yusuans_path
  end
end
