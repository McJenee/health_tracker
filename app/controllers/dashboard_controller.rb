class DashboardController < ApplicationController

  def index
#lifetime totals
    @avg_weight = Weight.average_weight

    @total_burned = Exercise.burned

    @net_calories = Fuel.net_calories

    @total_calories = Fuel.calories

    @total_step = Step.total_steps

#weekly totals
    @weekly_net_cals = Fuel.net_calories_week

    @avg_weight_week = Weight.average_weight_week

    @avg_fuel_week = Fuel.average_fuel_week

    @avg_step_week = Step.average_step_week

    @weekly_cal = Fuel.week_total_cals

    @weekly_burn = Exercise.week_total_exercise

    @weekly_step = Step.week_total_steps

    @weekly_weight = Weight.total_weight_week


  #daily totals
    @net_calories_today = Fuel.net_calories_today

    @today_cal = Fuel.daily_calories

    @today_burn = Exercise.daily_burn

    @today_step = Step.daily_steps

    @today_weight = Weight.daily_weight
  end

  def show

  end

end
