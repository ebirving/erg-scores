class ProfilesController < ApplicationController
  def index
    # GET /profiles
    @rowers = Profile.where(role: "Rower")
  end

  def show #View my profile
    # GET /profiles/:id
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
    @genders = 'Female', 'Male'
    @weight_classes = 'Open Weight', 'Lightweight'
    @age_groups = 'U16', 'U17', 'AA (21-26)', 'A (27-35)', 'B (36-42)', 'C (43-49)', 'D (50-54)', 'E (55-59)', 'F (60-64)', 'G (65-69)', 'H (70-74)', 'I (75-79)', 'J (80+)'
  end

  def create
    @profile = Profile.create(profile_params)
    redirect_to root_path
  end

  def edit #Edit my profile
    # GET /profiles/:id/edit
    @profile = Profile.find(params[:id])
    @genders = 'Female', 'Male'
    @weight_classes = 'Open Weight', 'Lightweight'
    @age_groups = 'AA (21-26)', 'A (27-35)', 'B (36-42)', 'C (43-49)', 'D (50-54)', 'E (55-59)', 'F (60-64)', 'G (65-69)', 'H (70-74)', 'I (75-79)', 'J (80+)'
  end

  def update #Update my profile
    # PUT /profiles/:id
    # PATCH /profiles/:id
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name,:last_name, :club, :program, :gender, :weight_class, :birthday, :age_group, :role, :user_id)
  end
end
