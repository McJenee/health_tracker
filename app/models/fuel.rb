class Fuel < ActiveRecord::Base

  def self.calories
    self.all.reduce(0) { |s, c| s + c.calorie }
  end

  def self.net_calories
    today = Time.now.strftime("%Y-%m-%d")
    fuel = @fuels.sum(:calorie).where(date: today)
    burn = @exercises.sum(:burn).where(date: today)
    fuel - burn
    # @net_fuel = @self.today - @burn.today
  end

end
