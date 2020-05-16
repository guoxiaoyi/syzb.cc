require 'test_helper'

class Admin::ActivityRecordsControllerTest < ActionController::TestCase
  setup do
    @activity_record = activity_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_record" do
    assert_difference('ActivityRecord.count') do
      post :create, activity_record: { activity_id: @activity_record.activity_id, user_id: @activity_record.user_id }
    end

    assert_redirected_to admin_activity_record_path(assigns(:activity_record))
  end

  test "should show activity_record" do
    get :show, id: @activity_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_record
    assert_response :success
  end

  test "should update activity_record" do
    patch :update, id: @activity_record, activity_record: { activity_id: @activity_record.activity_id, user_id: @activity_record.user_id }
    assert_redirected_to admin_activity_record_path(assigns(:activity_record))
  end

  test "should destroy activity_record" do
    assert_difference('ActivityRecord.count', -1) do
      delete :destroy, id: @activity_record
    end

    assert_redirected_to admin_activity_records_path
  end
end
