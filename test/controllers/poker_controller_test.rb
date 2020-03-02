require 'test_helper'

class PokerControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get poker_top_url
    assert_response :success
  end

end
