require 'test_helper'

class Admin::ActivitiesControllerTest < ActionController::TestCase
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post :create, activity: { content: @activity.content, customize_order: @activity.customize_order, description: @activity.description, location: @activity.location, start_time: @activity.start_time, title: @activity.title }
    end

    assert_redirected_to admin_activity_path(assigns(:activity))
  end

  test "should show activity" do
    get :show, id: @activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity
    assert_response :success
  end

  test "should update activity" do
    patch :update, id: @activity, activity: { content: @activity.content, customize_order: @activity.customize_order, description: @activity.description, location: @activity.location, start_time: @activity.start_time, title: @activity.title }
    assert_redirected_to admin_activity_path(assigns(:activity))
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, id: @activity
    end

    assert_redirected_to admin_activities_path
  end
end
