class Fuel < ActiveRecord::Base

  def net_calories # need to work on this
    today = Time.now.strftime("%Y-%m-%d")
    @net_fuel = @self.today - @burn.today
  end
  
end
