class AdminController < ApplicationController
  def index
    @projects = Project.all
    @components = Component.where(project_id: Project.where(id: CurrentState.first.project).first)    
  end
end