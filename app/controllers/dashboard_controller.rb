class DashboardController < ApplicationController

  def index
    @avg_weight_week = Weight.average_weight_week
    @net_calories_today = Fuel.net_calories_today
    @avg_weight = Weight.average_weight
    @total_burned = Exercise.burned
    @net_calories = Fuel.net_calories
    @total_steps = Step.total_steps

  end

  def show

  end

end
