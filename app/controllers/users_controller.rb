class UsersController < ApplicationController
  before_action :logged_in_check
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end


  private

  def user_params
    params.require(:user).permit(:first_name,:middle_name, :last_name, :email, :password_digest, :password, :password_confirmation)
  end
end
