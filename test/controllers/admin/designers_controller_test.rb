require 'test_helper'

class Admin::DesignersControllerTest < ActionController::TestCase
  setup do
    @designer = designers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designer" do
    assert_difference('Designer.count') do
      post :create, designer: { avatar: @designer.avatar, content: @designer.content, gl: @designer.gl, name: @designer.name, zw: @designer.zw }
    end

    assert_redirected_to admin_designer_path(assigns(:designer))
  end

  test "should show designer" do
    get :show, id: @designer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designer
    assert_response :success
  end

  test "should update designer" do
    patch :update, id: @designer, designer: { avatar: @designer.avatar, content: @designer.content, gl: @designer.gl, name: @designer.name, zw: @designer.zw }
    assert_redirected_to admin_designer_path(assigns(:designer))
  end

  test "should destroy designer" do
    assert_difference('Designer.count', -1) do
      delete :destroy, id: @designer
    end

    assert_redirected_to admin_designers_path
  end
end
