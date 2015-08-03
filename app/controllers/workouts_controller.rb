class WorkoutsController < ApplicationController
  def index #Show all workouts
    # GET /workouts
  end

  def show #Show all scores for this workout
    # GET /workouts/:id
  end

  def new #Eventually coaches only
    # GET /workout/new
  end

  def create
    # POST /rowers
  end

  def edit #Creator only, and only if empty
    # GET /rowers/:id/edit
  end

  def update
    # PUT /rowers/:id
    # PATCH /rowers/:id
  end

  def destroy #Creator only, and only if empty
    # DELETE /rowers/:id
  end
end
