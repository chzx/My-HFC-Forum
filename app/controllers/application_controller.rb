class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  helper_method :user_signed_in?
  helper_method :current_user
  helper_method :member_session


   def user_signed_in?
     session[:color_id].present?
   end


end