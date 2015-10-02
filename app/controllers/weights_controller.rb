class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]

  # GET /weights
  def index
    @weights = Weight.all
  end

  # GET /weights/1
  def show
  end

  # GET /weights/new
  def new
    @weight = Weight.new
  end

  # GET /weights/1/edit
  def edit
  end

  # POST /weights
  def create
    @weight = Weight.new(weight_params)

    respond_to do |format|
      if @weight.save
        format.html { redirect_to @weight, notice: 'Weight was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /weights/1
  def update
    respond_to do |format|
      if @weight.update(weight_params)
        format.html { redirect_to @weight, notice: 'Weight was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /weights/1
  def destroy
    @weight.destroy
    respond_to do |format|
      format.html { redirect_to weights_url, notice: 'Weight was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight
      @weight = Weight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_params
      params.require(:weight).permit(:weight, :date)
    end
end
