class Fuel < ActiveRecord::Base

  def self.calories
    self.all.reduce(0) { |s, c| s + c.calorie }
  end

  def self.net_calories
    c = Fuel.all.reduce(0) { |s, c| s + c.calorie }
    b = Exercise.all.reduce(0) { |s, c| s + c.burn }
    c - b
  end

  def self.net_calories_today
    today = Date.today
    if Fuel.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      fuel = Fuel.where(date: today).sum(:calorie)
      burn = Exercise.where(date: today).sum(:burn)
      fuel - burn
    end
  end

  def self.daily_calories(date)
    today = Date.today - date.days
    if Fuel.count == 0 || Exercise.count == 0
      "No data to calculate"
    else
      fuel = Fuel.where(date: today).sum(:calorie)
    end
  end

  def self.average_fuel_week
    week = self.where(date: (Date.today - 7.days)..Date.today)
    if week.count == 0
      "No data"
    else
      week.sum(:fuel) / week.count
    end
  end

end
