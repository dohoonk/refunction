class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in_check
    if current_user.nil?
      redirect_to root_path
    end
  end

end
