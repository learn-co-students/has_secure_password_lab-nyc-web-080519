class UsersController < ApplicationController
  before_action :authorized
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to homepage_path
    else
      redirect_to signup_path
    end
  end

  def homepage
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
