class ScoresController < ApplicationController
  def index #View my scores
    # GET /profiles/:profile_id/scores
    @profile = Profile.find(params[:profile_id])
    @scores = @profile.scores
  end

  def new
    # GET /profiles/:profile_id/scores/new
    # /workouts/:workout_id/scores/new
    if params.include? (:profile_id)
      @profile = Profile.find(params[:profile_id])
    elsif params.include? (:workout_id)
      @workout = Workout.find(params[:workout_id])
    end
    @score = Score.new
  end

  def create
    # POST /profiles/:profile_id/scores
    # /workouts/:workout_id/scores
    @score = Score.create(score_params)
    if params.include? (:profile_id)
      redirect_to profile_scores_path
    elsif params.include? (:workout_id)
      redirect_to workout_path(params[:workout_id])
    end
  end

  def edit #Edit from profile#show slash score#index view
    # GET /scores/:id/edit
    @score = Score.find(params[:id])
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
