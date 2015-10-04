class Fuel < ActiveRecord::Base

  def self.calories
    self.all.reduce(0) { |s, c| s + c.calorie }
  end

  def self.net_calories_
    today = Date.today
    if Fuel.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      fuel = Fuel.where(date: today).sum(:calories)
      burn = Exercise.where(date: today).sum(:burn)
      fuel - burn
    end
  end

  def self.calories_weekly
    Date.now -
    self.all.reduce(0) { |s, c| s + c.calorie }
  end
end
