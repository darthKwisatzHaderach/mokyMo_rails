class MainController < ApplicationController
  def index
    @test_objects = TestObject.where(component_id: @current_state.component)
    if @test_objects.nil?
      @description = 'Отсутствует'
    else
      @test_object = @test_objects.last
      @description = @test_object.component.description
      @execution = @test_objects.last.executions.last
    end
    if @execution.nil?
      @pass = 'Нет данных'
      @fail = 'Нет данных'
      @not_implemented = 'Нет данных'
      @comment = 'Нет данных'
    else
      r = @execution.results
      @pass = r.select { |item| item[:results] == true }.count
      @fail = r.select { |item| item[:results] == false }.count
      @not_implemented = r.select { |item| item[:implemented] == false }.count
      @comment = @execution.comment
    end

    @results = []
    @test_objects.each do |t|
      t.executions.each do |e|
        r = e.results
        pass = r.select { |item| item[:results] == true }.count
        fail = r.select { |item| item[:results] == false }.count
        not_implemented = r.select { |item| item[:implemented] == false }.count
        result = ["#{t.version}", pass, fail, not_implemented]
        @results << result
      end
    end
    header = ['Выполнено', 'Провалено', 'Не выполнялось']
    @data = (1..3).map do |i|
      {
        name: header[i - 1],
        data: @results[0..-1].map { |x| [x[0], x[i]] }
      }
    end
  end
end
