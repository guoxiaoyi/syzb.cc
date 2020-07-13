require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get get_switch" do
    get :get_switch
    assert_response :success
  end

  test "should get get_price1" do
    get :get_price1
    assert_response :success
  end

end
