class WorkoutsController < ApplicationController
  def index
    #Show all workouts
    # GET /workouts
    @workouts = Workout.all
  end

  def show
    #Show all scores for this workout
    # GET /workouts/:id
    @workout = Workout.find(params[:id])
    @scores = Score.where(workout_id: @workout.id)
  end

  def new #Eventually coaches only
    # this is interesting, comma separated strings, this doesn't error out?
    # GET /workout/new
    @workout = Workout.new
    @training_bands = 'UT2', 'UT1', 'AT', 'TR', 'AN'
    @workout_types = 'Active Recovery', 'Training', 'Taper', 'Benchmark'
  end

  def create
    # POST /workouts
    @workout = Workout.create(workout_params)
    redirect_to workout_path(@workout)
  end

  def edit #Creator only, and only if empty
    # GET /workouts/:id/edit
    @workout = Workout.find(params[:id])
    @workout_types = 'Active Recovery', 'Training', 'Taper', 'Benchmark'
  end

  def update
    # PUT /workouts/:id
    # PATCH /workouts/:id
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
    redirect_to workout_path(@workout)
  end

  def destroy #Creator only, and only if empty
    # DELETE /workouts/:id
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_path
  end

  private
  def workout_params
      params.require(:workout).permit(:name, :description, :intensity)
  end
end
