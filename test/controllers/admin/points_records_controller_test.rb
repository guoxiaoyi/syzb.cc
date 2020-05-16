require 'test_helper'

class Admin::PointsRecordsControllerTest < ActionController::TestCase
  setup do
    @points_record = points_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:points_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create points_record" do
    assert_difference('PointsRecord.count') do
      post :create, points_record: { brief: @points_record.brief, points: @points_record.points, title: @points_record.title, user_id: @points_record.user_id }
    end

    assert_redirected_to admin_points_record_path(assigns(:points_record))
  end

  test "should show points_record" do
    get :show, id: @points_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @points_record
    assert_response :success
  end

  test "should update points_record" do
    patch :update, id: @points_record, points_record: { brief: @points_record.brief, points: @points_record.points, title: @points_record.title, user_id: @points_record.user_id }
    assert_redirected_to admin_points_record_path(assigns(:points_record))
  end

  test "should destroy points_record" do
    assert_difference('PointsRecord.count', -1) do
      delete :destroy, id: @points_record
    end

    assert_redirected_to admin_points_records_path
  end
end
