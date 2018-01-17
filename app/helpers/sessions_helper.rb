module SessionsHelper
  def current_user
    @user ||= User.find(session[:user_id])
  end

  def log_out
    @user = nil
    session[:user_id] = nil
  end

  def logged_in?
    session[:user_id]
  end
end
