class UsersController < ApplicationController
  def show
    # public page of the user
    @user = User.find_by(username: params[:slug])
    authorize @user
  end

  def my_profile
    @user = current_user
    authorize @user
  end
end
