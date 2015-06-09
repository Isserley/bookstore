class SessionsController < ApplicationController

  def new

  end

  def create
    @users = User.where(username: params[:username]).first
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = 'Welcome to the site!'
      redirect_to root_path
    else
      flash[:alert] = 'Oops! Incorrect username or password'
      render :new
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end

end
