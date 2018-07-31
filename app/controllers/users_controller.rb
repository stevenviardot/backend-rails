class UsersController < ApplicationController

  def new
  end

  def create
     @user = User.new
     @user.username = params["username"]
     @user.save

     if @user.save
       redirect_to "/"
     else
       redirect_to "/fuckoff"
   end
 end

  def show
    @name = params[:username]
  end

  def fuck
  end

end
