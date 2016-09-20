class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # also allow phone and address for sign_up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone, :address])
  end
end
