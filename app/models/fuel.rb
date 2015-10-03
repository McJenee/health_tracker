class Fuel < ActiveRecord::Base

  def number_of_calories # need to work on this
    today = date.today
    @net_fuel = @self.today - @burn
  end
  #
  # def calories_burned
  #
  # end
end
