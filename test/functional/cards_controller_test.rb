require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get right" do
    get :right
    assert_response :success
  end

  test "should get wrong" do
    get :wrong
    assert_response :success
  end

end
