class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :username, :bio])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :username, :bio])
  end
end
