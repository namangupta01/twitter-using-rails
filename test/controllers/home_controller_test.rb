require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get tweet" do
    get :tweet
    assert_response :success
  end

  test "should get like" do
    get :like
    assert_response :success
  end

end
