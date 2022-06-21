require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get employ" do
    get employees_employ_url
    assert_response :success
  end
end
