class FuelsController < ApplicationController
  before_action :set_fuel, only: [:show, :edit, :update, :destroy]



  hello
  # GET /fuels
  def index
    @fuels = Fuel.all
  end

  # GET /fuels/1
  def show
  end

  # GET /fuels/new
  def new
    @fuel = Fuel.new
  end

  # GET /fuels/1/edit
  def edit
  end

  # POST /fuels
  def create
    @fuel = Fuel.new(fuel_params)

    respond_to do |format|
      if @fuel.save
        format.html { redirect_to @fuel, notice: 'Fuel was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /fuels/1
  def update
    respond_to do |format|
      if @fuel.update(fuel_params)
        format.html { redirect_to @fuel, notice: 'Fuel was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /fuels/1
  def destroy
    @fuel.destroy
    respond_to do |format|
      format.html { redirect_to fuels_url, notice: 'Fuel was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel
      @fuel = Fuel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_params
      params.require(:fuel).permit(:calorie, :date, :food, :meal_type)
    end
end
