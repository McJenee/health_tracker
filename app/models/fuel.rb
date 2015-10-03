class Fuel < ActiveRecord::Base

  def self.calories
    self.all.reduce(0) { |s, c| s + c.calorie }
  end

end
