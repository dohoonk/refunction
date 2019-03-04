class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  after_action :track_action

  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in_check
    if current_user.nil?
      redirect_to root_path
    end
  end

  def track_action
    ahoy.track "Ran action", request.path_parameters
  end

end
