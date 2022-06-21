require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get prod" do
    get products_prod_url
    assert_response :success
  end
end
