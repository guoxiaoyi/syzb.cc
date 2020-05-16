# == Schema Information
#
# Table name: fgs
#
#  id         :integer          not null, primary key
#  title      :string(30)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class FgsControllerTest < ActionController::TestCase
  setup do
    @fg = fgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fg" do
    assert_difference('Fg.count') do
      post :create, fg: { title: @fg.title }
    end

    assert_redirected_to fg_path(assigns(:fg))
  end

  test "should show fg" do
    get :show, id: @fg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fg
    assert_response :success
  end

  test "should update fg" do
    patch :update, id: @fg, fg: { title: @fg.title }
    assert_redirected_to fg_path(assigns(:fg))
  end

  test "should destroy fg" do
    assert_difference('Fg.count', -1) do
      delete :destroy, id: @fg
    end

    assert_redirected_to fgs_path
  end
end
