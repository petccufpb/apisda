require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  test "should get api/v1" do
    get videos_api/v1_url
    assert_response :success
  end

end
