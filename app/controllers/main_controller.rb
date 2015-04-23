class MainController < ApplicationController
  def index
    if current_user.current_state.nil?
      CurrentState.create(project_id: 1, component_id: 1, user_id: current_user.id)
    end
    @test_objects = TestObject.where(component_id: current_state.component)
    if @test_objects.count == 0
      @description = 'Отсутствует'
    else
      @test_object = @test_objects.last
      @description = @test_object.component.description
      @execution = @test_object.executions.last
      if @test_object.executions.count == 0
        @pass = 'Нет данных'
        @fail = 'Нет данных'
        @not_implemented = 'Нет данных'
        @pending = 'Нет данных'
        @comment = 'Нет данных'
        @version = '-'
      else
        r = @execution.results
        @pass = r.select { |item| item[:status_kind_id] == 1 }.count
        @fail = r.select { |item| item[:status_kind_id] == 2 }.count
        @not_implemented = r.select { |item| item[:status_kind_id] == 3 }.count
        @pending = r.select { |item| item[:status_kind_id] == 4 }.count
        @comment = @execution.comment
        @version = @test_object.version
      end
    end

    @pie = [
      ['Выполнено', @pass],
      ['Провалено', @fail],
      ['Не выполнялось', @not_implemented],
      ['В работе', @pending]
    ]

    @results = []
    @test_objects.each do |t|
      t.executions.each do |e|
        r = e.results
        pass = r.select { |item| item[:status_kind_id] == 1 }.count
        fail = r.select { |item| item[:status_kind_id] == 2 }.count
        not_implemented = r.select { |item| item[:status_kind_id] == 3 }.count
        pending = r.select { |item| item[:status_kind_id] == 4 }.count
        result = [
          "#{t.version}\n #{e.created_at.strftime('%d/%m/%Y - %H:%M')}",
          pass,
          fail,
          not_implemented,
          pending
        ]
        @results << result
      end
    end
    @header = ['Выполнено', 'Провалено', 'Не выполнялось', 'В работе']
    @data = (1..4).map do |i|
      {
        name: @header[i - 1],
        data: @results.map { |x| [x[0], x[i]] }
      }
    end

    @all = []
    components = Project.find_by_id(current_state.project.id).components
    components.each do |c|      
      unless c.test_objects.count == 0
        t = c.test_objects.last
        unless t.executions.count == 0
          e = t.executions.last
          unless e.nil?
            pass = e.results.select { |item| item[:status_kind_id] == 1 }.count
            fail = e.results.select { |item| item[:status_kind_id] == 2 }.count
            not_implemented = e.results.select { |item| item[:status_kind_id] == 3 }.count
            pending = e.results.select { |item| item[:status_kind_id] == 4 }.count
            result = [
              "#{t.component.title}\n#{t.version}\n#{e.created_at.strftime('%d/%m/%Y - %H:%M')}",
              pass,
              fail,
              not_implemented,
              pending
            ]
            @all << result
          end
        end
      end
    end
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#{@all}"
    @g_data = (1..4).map do |i|
      {
        name: @header[i - 1],
        data: @all.map { |x| [x[0], x[i]] }
      }
    end
  end
end
