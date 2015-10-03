require 'test_helper'

class FuelTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "net calories work" do
    f1 = Fuel.create!(calorie: "200", date: 2015-10-02)
    f2 = Fuel.create!(calorie: "200", date: 2015-10-02)
    f3 = Fuel.create!(calorie: "200", date: 2015-10-02)
    f4 = Fuel.create!(calorie: "200", date: 2015-10-03)

    b1 = Exercise.create!(burn: 50, date: 2015-10-02)
    b2 = Exercise.create!(burn: 60, date: 2015-10-02)

    assert net_calories = "490"
  end

  test "total calories consumed" do
    Fuel.create(calorie: 2000, meal_type: "Dinner")
    Fuel.create(calorie: 500, meal_type: "Snack")
    assert_equal Fuel.calories, 2502
  end
end
