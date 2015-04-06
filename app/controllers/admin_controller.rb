class AdminController < ApplicationController
  def index
    @test_objects = TestObject.where(component_id: @current_state.component)
    @projects = Project.all
    @components = Component.where(project_id: @current_state.project)
  end

  def export
  end
end
