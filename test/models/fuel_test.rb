require 'test_helper'

class FuelTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "total calories consumed" do
    Fuel.create(calorie: 2000, meal_type: "Dinner")
    Fuel.create(calorie: 500, meal_type: "Snack")
    assert_equal Fuel.calories, 2502
  end
end
