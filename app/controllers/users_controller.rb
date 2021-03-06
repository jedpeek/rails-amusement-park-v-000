class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    if !session[:user_id]
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nausea, :happiness, :tickets, :admin, :password, :height)
  end
end
