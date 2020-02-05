class UsersController < ApplicationController
  before_action :authenticate_user!
  def dashbaord
  end

  def update
    @user = current_user 
    if @user.update_attributes(current_user_params)
        flash[:notice]= "updated!"
    else
      flash[:alert]= "error occur!"
    end
    redirect_to dashboard_path
  end

  private 

  def current_user_params
    params.require(:user).permit(:from, :about, :status, :language, :avatar)
  end
end
