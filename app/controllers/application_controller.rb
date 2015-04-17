class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_state
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def current_state
    if current_user.nil?
      @current_state = CurrentState.first
    else
      @current_state = current_user.current_state
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:full_name, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :full_name, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:full_name, :email, :password, :password_confirmation, :current_password) }
  end
end
