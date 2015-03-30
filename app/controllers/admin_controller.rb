class AdminController < ApplicationController
  def index
  	@test_objects = TestObject.where(project_id: @current_state.project)
    @projects = Project.all
    @components = Component.where(project_id: Project.where(id: CurrentState.first.project).first)    
  end

  def export
  end
end