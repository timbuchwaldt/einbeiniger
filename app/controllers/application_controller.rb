class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  # Devise override for profile updates
  def configure_permitted_parameters
    user_params = %i(phone year_of_birth location name skype)
    devise_parameter_sanitizer.for(:account_update) << user_params
    devise_parameter_sanitizer.for(:sign_up) << user_params
  end
end
