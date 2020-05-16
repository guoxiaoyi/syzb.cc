require 'test_helper'

class Admin::VideoConfigsControllerTest < ActionController::TestCase
  setup do
    @video_config = video_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_config" do
    assert_difference('VideoConfig.count') do
      post :create, video_config: { content: @video_config.content }
    end

    assert_redirected_to admin_video_config_path(assigns(:video_config))
  end

  test "should show video_config" do
    get :show, id: @video_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_config
    assert_response :success
  end

  test "should update video_config" do
    patch :update, id: @video_config, video_config: { content: @video_config.content }
    assert_redirected_to admin_video_config_path(assigns(:video_config))
  end

  test "should destroy video_config" do
    assert_difference('VideoConfig.count', -1) do
      delete :destroy, id: @video_config
    end

    assert_redirected_to admin_video_configs_path
  end
end
