require 'test_helper'

class UserCustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_customer_new_url
    assert_response :success
  end

end
