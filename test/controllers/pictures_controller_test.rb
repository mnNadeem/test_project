require "test_helper"

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get pic" do
    get pictures_pic_url
    assert_response :success
  end
end
