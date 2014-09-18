class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :trae_person
  
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
  	# devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :id, :is_admin, :is_enterprise) }
  	# devise_parameter_sanitizer.for(:sign_up) << :is_enterprise
   #  devise_parameter_sanitizer.for(:account_update) << :is_enterprise
  end

  def trae_person
    @personbymail =  Person.find_by(user_id: current_user.id) if current_user
  end
end
