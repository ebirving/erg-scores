class ScoresController < ApplicationController
  def index #View my scores
    # GET /rowers/:rower_id/scores
    @rower = Rower.find(params[:rower_id])
    @scores = @rower.scores
  end

  def new
    # GET /rowers/:rower_id/scores/new
    # /workouts/:workout_id/scores/new
    if params.include? (:rower_id)
      @rower = Rower.find(params[:rower_id])
    elsif params.include? (:workout_id)
      @workout = Workout.find(params[:workout_id])
    end
    @score = Score.new
  end

  def create
    # POST /rowers/:rower_id/scores
    # /workouts/:workout_id/scores
    @score = Score.create(score_params)
    if params.include? (:rower_id)
      redirect_to rower_scores_path
    elsif params.include? (:workout_id)
      redirect_to workout_path(params[:workout_id])
    end
  end

  def edit #Edit from rower#show slash score#index view
    # GET /scores/:id/edit
    @score = Score.find(params[:id])
  end

  def update
    # PATCH /scores/:id
    # PUT /scores/:id
    @score = Score.find(params[:id])
    @score.update(score_params)
    @rower_id = @score.rower_id
    redirect_to rower_scores_path(@rower_id)
  end

  def destroy #Delete from rower#show slash score#index view
    # DELETE /scores/:id
    @score = Score.find(params[:id])
    @rower_id = @score.rower_id
    @score.destroy
    redirect_to rower_scores_path(@rower_id)
  end

  private
  def score_params
    params.require(:score).permit(:interval_number, :minutes, :seconds, :distance, :split, :spm, :created_at, :updated_at, :workout_id, :rower_id)
  end
end
