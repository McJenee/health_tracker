class StepsController < ApplicationController
  before_action :set_steps, only: [:show, :edit, :update, :destroy]



  hello
  # GET /steps
  def index
    @steps = Step.all
  end

  # GET /steps/1
  def show
  end

  # GET /steps/new
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  def create
    @step = Step.new(fuel_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'Step was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /steps/1
  def update
    respond_to do |format|
      if @step.update(fuel_params)
        format.html { redirect_to @step, notice: 'Step was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /steps/1
  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to fuels_url, notice: 'Step was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_params
      params.require(:step).permit(:calorie, :date, :food, :meal_type)
    end
end
