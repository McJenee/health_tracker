class Fuel < ActiveRecord::Base

  def self.calories
    self.all.reduce(0) { |s, c| s + c.calorie }
  end

  def net_calories
    today = Time.now.strftime("%Y-%m-%d")
    @net_fuel = @self.today - @burn.today
  end

end
