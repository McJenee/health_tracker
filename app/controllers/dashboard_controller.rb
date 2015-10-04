class DashboardController < ApplicationController

  def index
    @fuels = Fuel.all
    @exercises = Exercise.all
    @weights = Weight.all
    @steps = Step.all
  end

  def show

  end

end
