class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_state

  private

  def current_state
  	@project = CurrentState.first.project
  	@component = CurrentState.first.component
  end
end
