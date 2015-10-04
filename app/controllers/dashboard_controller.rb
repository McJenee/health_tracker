class DashboardController < ApplicationController
  def index
    @avg_weight_week = Weight.average_weight_week
  end

  def show

  end
end
