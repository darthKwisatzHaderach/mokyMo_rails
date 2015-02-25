class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_state

  private

  def current_state
  	@project_state = Project.where(id: CurrentState.first.project).first.title
  	@component_state = CurrentState.first.component
  	@current_state = CurrentState.first
  end
end
