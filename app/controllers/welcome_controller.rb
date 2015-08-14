class WelcomeController < ApplicationController
  def index
    # this is so cool! if the user is logged in and they have no profile, they automatically have to go to make a new profile
    @user = current_user
    if current_user.profile == nil
      redirect_to new_profile_path
    end
  end
end
