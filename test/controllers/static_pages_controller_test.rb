require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get leher" do
    get static_pages_leher_url
    assert_response :success
  end

end
