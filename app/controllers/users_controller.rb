class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def show
  end


  def new
    @user = User.new
  end


  def edit
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end


  def update

  end


  def destroy

  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name, :photo_url)
    end
end
