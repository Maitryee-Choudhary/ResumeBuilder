class HomeController < ApplicationController

  def index
    
    @user = current_user
    @profile = current_user.profile
  end

  def edit
    @user = current_user
    if current_user
        @profile = current_user.profile
    end
  end

end
