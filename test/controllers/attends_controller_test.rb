require 'test_helper'

class AttendsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get attends_new_url
    assert_response :success
  end

end
