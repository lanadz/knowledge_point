class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show

  end

  def edit

  end

  def new
    @user = User.new
  end

  def update

  end

  def create
    User.create(user_params)
    redirect_to users
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :login, :email, :is_mentor)
  end

end
