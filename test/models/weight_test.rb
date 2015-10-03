require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "date validation" do
    a = Weight.create!(date: 2015-10-03)
    b = Weight.new()
    assert a.date
    assert b.save
  end
end
