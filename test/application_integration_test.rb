require "test_helper"

class ApplicationIntegrationTest < ActionDispatch::IntegrationTest
  test "dummy app boots" do
    get "/"
    assert_response :success
  end
end
