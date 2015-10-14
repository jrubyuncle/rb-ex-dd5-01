class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :user_signed_in?


  protected
  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    current_user
  end
end
