class RowersController < ApplicationController
  # def index -- COACHES ONLY
  #   # GET /rowers
  # end

  def show #View my profile
    # GET /rowers/:id
    @rower = Rower.find(params[:id])
  end

  # def new -- COACHES ONLY
  #   # GET /rowers/new
  # end

  # def create
  #   # POST /rowers
  # end

  def edit #Edit my profile
    # GET /rowers/:id/edit
    @rower = Rower.find(params[:id])
    @genders = 'Female', 'Male'
    @weight_classes = 'Open Weight', 'Lightweight'
    @age_groups = 'U16', 'U17', 'AA (21-26)', 'A (27-35)', 'B (36-42)', 'C (43-49)', 'D (50-54)', 'E (55-59)', 'F (60-64)', 'G (65-69)', 'H (70-74)', 'I (75-79)', 'J (80+)'
  end

  def update #Update my profile
    # PUT /rowers/:id
    # PATCH /rowers/:id
    @rower = Rower.find(params[:id])
    @rower.update(rower_params)
    redirect_to rower_path(@rower)
  end

  def destroy #Delete profile
    # DELETE /rowers/:id
    @rower = Rower.find(params[:id])
    @rower.destroy
    redirect_to root_path
  end

  private
  def rower_params
    params.require(:rower).permit(:first_name,:last_name, :club, :program, :gender, :weight_class, :birthday, :age_group)
  end
end
