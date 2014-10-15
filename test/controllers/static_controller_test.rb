require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get landing" do
    get :landing
    assert_response :success
  end

  test "should get feed_post" do
    get :feed_post
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get directory" do
    get :directory
    assert_response :success
  end

end
