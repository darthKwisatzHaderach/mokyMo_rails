class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_state

  private

  def current_state
    if current_user.nil?
      @current_state = CurrentState.first
    else
      @current_state = current_user.current_state
    end
  end
end
