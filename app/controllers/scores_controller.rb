class ScoresController < ApplicationController
  def index #View my scores
    # GET /profiles/:profile_id/scores
    @profile = Profile.find(params[:profile_id])
    @scores = @profile.scores
  end

  def new
    # GET /profiles/:profile_id/scores/new
    # /workouts/:workout_id/scores/new
    @profile = current_user.profile
    if params.include? (:workout_id)
      @workout = Workout.find(params[:workout_id])
    end
    @score = Score.new
    @workouts = Workout.all
  end

  def create
    # POST /profiles/:profile_id/scores
    # /workouts/:workout_id/scores
    @score = Score.create(score_params)
    redirect_to workout_path(score_params[:workout_id])
  end

  def edit #Edit from profile#show slash score#index view
    # GET /scores/:id/edit
    @score = Score.find(params[:id])
    @workouts = Workout.all
  end

  def update
    # PATCH /scores/:id
    # PUT /scores/:id
    @score = Score.find(params[:id])
    @score.update(score_params)
    @profile_id = @score.profile_id
    redirect_to profile_scores_path(@profile_id)
  end

  def destroy #Delete from profile#show slash score#index view
    # DELETE /scores/:id
    @score = Score.find(params[:id])
    @profile_id = @score.profile_id
    @score.destroy
    redirect_to profile_scores_path(@profile_id)
  end

  private
  def score_params
    params.require(:score).permit(:interval_number, :minutes, :seconds, :distance, :split, :spm, :created_at, :updated_at, :workout_id, :profile_id)
  end
end
