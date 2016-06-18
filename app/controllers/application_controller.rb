class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!, except: [:index, :about]

  # don't forget this line or the custom params will not work
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :username )}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :username )}
  end
end
