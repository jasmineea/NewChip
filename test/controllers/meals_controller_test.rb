require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get meals_feed_url
    assert_response :success
  end

end
