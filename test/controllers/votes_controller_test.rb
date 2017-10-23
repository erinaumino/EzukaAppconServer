require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get votes_result_url
    assert_response :success
  end

end
