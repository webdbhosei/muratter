require 'test_helper'

class JoinControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm" do
    get join_confirm_url
    assert_response :success
  end

end
