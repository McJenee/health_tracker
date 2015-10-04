class DashboardController < ApplicationController

  def index
    @avg_weight_week = Weight.average_weight_week
    @net_calories_today = Fuel.net_calories_today
    @avg_weight = Weight.average_weight
  end

  def show

  end

end
