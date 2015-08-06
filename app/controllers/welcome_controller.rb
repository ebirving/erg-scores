class WelcomeController < ApplicationController
  def index
    @user = current_user
    if current_user.profile == nil
      redirect_to new_profile_path
    end
  end
end
