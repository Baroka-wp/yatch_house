class ApplicationController < ActionController::API
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
 
  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up).push(:name,:email, :telephone, :admin, :password, :password_confirmation)
     devise_parameter_sanitizer.for(:account_update).push(:name,:email, :telephone, :admin, :password)
  end
end
