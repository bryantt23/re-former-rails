class UsersController < ApplicationController
  def new
  end


  def create
    @user =User.new(username: params[:username], email: params[:email], password: params[:password])

    if @user.save
      redirect_to new_users
    else
      render :new, status: :unprocessable_entity
    end
  end
end
