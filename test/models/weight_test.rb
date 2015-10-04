require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "date validation" do
    a = Weight.create!(date: 2015-10-03)
    b = Weight.new()
    assert a.date
    assert b.save
  end

  test "average weight" do
    Weight.create!(weight: 180, date: 2015-10-03)
    assert_equal Weight.average_weight, 180
  end

  test "average weight for week" do
    Weight.create!(weight: 180, date: (Date.today - 7.days))
    assert_equal Weight.average_weight_week, 177
    Weight.create!(weight: 200, date: (Date.today - 8.days))
    assert_equal Weight.average_weight_week, 177
  end
end
