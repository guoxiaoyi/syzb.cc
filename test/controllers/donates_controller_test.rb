# == Schema Information
#
# Table name: donates
#
#  id                :integer          not null, primary key
#  content           :text
#  user_id           :integer
#  manager_id        :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_donates_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

require 'test_helper'

class DonatesControllerTest < ActionController::TestCase
  setup do
    @donate = donates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donate" do
    assert_difference('Donate.count') do
      post :create, donate: { content: @donate.content, manager_id: @donate.manager_id, user_id: @donate.user_id }
    end

    assert_redirected_to donate_path(assigns(:donate))
  end

  test "should show donate" do
    get :show, id: @donate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donate
    assert_response :success
  end

  test "should update donate" do
    patch :update, id: @donate, donate: { content: @donate.content, manager_id: @donate.manager_id, user_id: @donate.user_id }
    assert_redirected_to donate_path(assigns(:donate))
  end

  test "should destroy donate" do
    assert_difference('Donate.count', -1) do
      delete :destroy, id: @donate
    end

    assert_redirected_to donates_path
  end
end
