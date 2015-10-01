class ExerciseTypesController < ApplicationController
  before_action :set_exercise_type, only: [:show, :edit, :update, :destroy]

  # GET /exercise_types
  def index
    @exercise_types = ExerciseType.all
  end

  # GET /exercise_types/1
  def show
  end

  # GET /exercise_types/new
  def new
    @exercise_type = ExerciseType.new
  end

  # GET /exercise_types/1/edit
  def edit
  end

  # POST /exercise_types
  def create
    @exercise_type = ExerciseType.new(exercise_type_params)

    respond_to do |format|
      if @exercise_type.save
        format.html { redirect_to @exercise_type, notice: 'Exercise type was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /exercise_types/1
  def update
    respond_to do |format|
      if @exercise_type.update(exercise_type_params)
        format.html { redirect_to @exercise_type, notice: 'Exercise type was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /exercise_types/1
  def destroy
    @exercise_type.destroy
    respond_to do |format|
      format.html { redirect_to exercise_types_url, notice: 'Exercise type was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_type
      @exercise_type = ExerciseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_type_params
      params.require(:exercise_type).permit(:name)
    end
end
