class MainController < ApplicationController
  def index
    test_objects = TestObject.where(component_id: @current_state.component)
    @test_object = test_objects.last
    @execution = test_objects.last.executions.last
  end
end
