class ProfilesController < ApplicationController
  before_action :set_user

  def show
    @profile = @user.profile
  end

  def edit
    @user = User.find(current_user.id)
    @profile = @user.profile
    @basic = @user.basic
  end

  def update
    @user = User.find(current_user.id)
    @profile = @user.profile
    @basic = @user.basic
    if @profile.update(profile_params)
      redirect_to "/users/#{current_user.id}/profiles/edit", notice: 'プロフィールを更新しました'
    else
      render :edit
    end
    # @basic.update(basic_params)
  end

  private

  def profile_params
    params.required(:profile).permit(:cover_image, :profile_image, :catch_copy, :introduction, :goal, :career, :related_title, :related_link, :attached_file)
  end

  # def basic_params
  #   params.required(:basic).permit(:birth_place, :birth_date, :blood_type, :gender)
  # end

  def set_user
    @user = User.find(params[:user_id])
  end

end