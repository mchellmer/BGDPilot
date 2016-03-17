require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  test "should get calculator" do
    get :calculator
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get researchers" do
    get :researchers
    assert_response :success
  end

end
