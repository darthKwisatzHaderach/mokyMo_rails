class MainController < ApplicationController
  def index
    test_objects = TestObject.where(component_id: @current_state.component)
    @test_object = test_objects.last
    @execution = test_objects.last.executions.last
    if @execution.nil?
      @pass = 'Нет данных'
      @fail = 'Нет данных'
      @not_implemented = 'Нет данных'
    else
      r = @execution.results
      @pass = r.select { |item| item[:results] == true }.count
      @fail = r.select { |item| item[:results] == false }.count
      @not_implemented = r.select { |item| item[:implemented] == false }.count
    end
  end
end
