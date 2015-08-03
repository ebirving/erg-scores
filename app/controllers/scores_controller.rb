class ScoresController < ApplicationController
  def index #View my scores -- combine w/ rower#show?
    # GET /rowers/:rower_id/scores
  end

  def new
    # GET /rowers/:rower_id/scores/new
    # /workouts/:workout_id/scores/new
  end

  def create
    # POST /rowers/:rower_id/scores
    # /workouts/:workout_id/scores
  end

  def edit #Edit from rower#show slash score#index view
    # GET /scores/:id/edit
  end

  def update
    # PATCH /scores/:id
    # PUT /scores/:id
  end

  def destroy #Delete from rower#show slash score#index view
    # DELETE /scores/:id
  end
end
