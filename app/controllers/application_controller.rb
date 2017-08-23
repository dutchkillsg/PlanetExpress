class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:fleet])
   update_attrs = [:email, :name, :fleet, :password, :password_confirmation, :current_password]
  devise_parameter_sanitizer.permit :account_update, keys: update_attrs
 end

 def after_sign_in_path_for(resource)
   user_path(resource)
 end

end
