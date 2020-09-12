class TopsController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find(current_user.id)
      @profile = @user.profile
    end
  end
end
