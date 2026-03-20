require "test_helper"

class CalculationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get calculations_new_url
    assert_response :success
  end

  test "should get create" do
    get calculations_create_url
    assert_response :success
  end

  test "should get show" do
    get calculations_show_url
    assert_response :success
  end
end
