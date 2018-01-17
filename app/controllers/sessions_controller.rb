class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to root_path
    end
  end

  def destroy
    if session[:user_id]
      log_out
      redirect_to root_path
    end
  end

  private

  def session_params
    params.require(:session).permit(:username)
  end
end
