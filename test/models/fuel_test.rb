require 'test_helper'

class FuelTest < ActiveSupport::TestCase
  test "calories consumed" do
    fuel = Fuel.create!(calorie: "200")
    assert true
  end
end
