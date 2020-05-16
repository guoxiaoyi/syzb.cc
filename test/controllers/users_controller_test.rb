# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  phone        :string(255)
#  name         :string(255)
#  province     :string(255)
#  city         :string(255)
#  district     :string(255)
#  manager_id   :integer
#  parent_phone :string(255)
#  openid       :string(255)
#  birthday     :date
#  balance      :decimal(10, 2)   default(0.0)
#  levels       :string(255)      default("tourist")
#  expired_at   :date
#  avatar       :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  number       :string(255)
#
# Indexes
#
#  index_users_on_manager_id    (manager_id)
#  index_users_on_name          (name)
#  index_users_on_openid        (openid)
#  index_users_on_parent_phone  (parent_phone)
#  index_users_on_phone         (phone)
#  index_users_on_province      (province)
#

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, login: @user.login, name: @user.name }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { email: @user.email, login: @user.login, name: @user.name }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
