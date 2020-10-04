class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  def show
    @user = User.find(params[:id])
    @events = Event.all
  end

  def log_in
    @user = User.find_by_name(params[:name])
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
