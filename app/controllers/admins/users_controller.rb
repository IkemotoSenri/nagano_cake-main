class Admins::UsersController < ApplicationController
  def index
     @users = User.all
  end
  
  def show
     @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
  end
  
  
  private 
  
  def user_params
     params.require(:user).permit(:email, :first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :telephone_number, :is_active)
  end
end
