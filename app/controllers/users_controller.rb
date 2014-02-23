class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
     sign_in @user
     flash[:success] = "Welcome to the site!" + @user.name 
     render "shared/main_page"
    else
        render 'new'
    end
  end  

 def show
    @user = User.find(params[:id])
  end

  
end
