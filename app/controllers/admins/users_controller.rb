class Admins::UsersController < ApplicationController
  def index
    @users = Users.all
  end
  
  def show
  end
  
  def edit
  end
  
  

end
