require 'test_helper'

class PmembersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pmembers_show_url
    assert_response :success
  end

end
