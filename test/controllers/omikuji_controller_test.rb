require "test_helper"

class OmikujiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get omikuji_path
    assert_response :success
  end
end
