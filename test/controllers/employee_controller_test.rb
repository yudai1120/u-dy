require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employee_new_url
    assert_response :success
  end

end
