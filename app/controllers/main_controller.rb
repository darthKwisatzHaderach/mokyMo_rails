class MainController < ApplicationController
  def index
    test_objects = TestObject.where(project_id: @current_state.project)
    @test_object = test_objects.last
    @execution = test_objects.last.executions.last
  end
end
