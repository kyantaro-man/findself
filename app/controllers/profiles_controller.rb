class ProfilesController < ApplicationController
  before_action :set_user

  def show
    @user = User.find(current_user.id)
    @profile = @user.profile
  end

  def edit
    @user = User.find(current_user.id)
    @profile = @user.profile
  end

  def update
    @user = User.find(current_user.id)
    @profile = @user.profile
    @profile.update(profile_params)
  end

  private

  def profile_params
    params.required(:profile).permit(:cover_image, :profile_image, :catch_copy, :introduction, :goal, :career, :related_title, :related_link, :attached_file)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end