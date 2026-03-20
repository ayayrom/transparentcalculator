require "test_helper"

class CalculationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new (homepage)" do
    get root_url
    assert_response :success
  end

  test "should create calculation and redirect" do
    assert_difference("Calculation.count", 1) do
      post calculations_url, params: { calculation: { equation: "(10 * 10) + 5" } }
    end

    assert_redirected_to calculation_url(Calculation.last)
  end

  test "should show calculation" do
    calc = Calculation.create!(
      equation: "10 + 10",
      solution: "Pending,",
      tree: { "status" => "Not parsed" }
    )
    
    get calculation_url(calc)
    assert_response :success
  end
end
