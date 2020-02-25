require 'test_helper'

class CreeksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creeks_index_url
    assert_response :success
  end

end
