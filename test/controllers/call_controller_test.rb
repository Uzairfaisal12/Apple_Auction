require "test_helper"

class CallControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get call_hello_url
    assert_response :success
  end
end
