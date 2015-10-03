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
end
