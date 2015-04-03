class AdminController < ApplicationController
  def index
    @test_objects = TestObject.where(project_id: @current_state.project)
    @projects = Project.all
    @components = Component.where(project_id: @current_state.project)
  end

  def export
  end
end
