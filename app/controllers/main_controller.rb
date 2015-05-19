class MainController < ApplicationController

  def index
    if current_user.current_state.nil?
      current_user.current_state = CurrentState.create(
        project_id: 1,
        component_id: 1,
        user_id: current_user.id)
    end
    @description = current_user.current_state.component.description

    test_objects = TestObject.where(component_id: current_state.component)

    unless test_objects.count == 0
      t = test_objects.last
      e = t.executions.last
      if t.executions.count == 0
        @comment = 'Нет данных'
        @version = '-'
      else
        @comment = e.comment
        @version = t.version
      end
    end

    calculate_result(e)
    @pie = [
      ['Выполнено', @pass],
      ['Провалено', @fail],
      ['Не выполнялось', @not_implemented],
      ['В работе', @pending]
    ]

    @c_data = prepare_data_for_component_chart
    @p_data = prepare_data_for_project_chart
  end

  def calculate_result(e)
    unless e.nil?
      t = e.test_object
      r = e.results
      @pass = r.select { |item| item[:status_kind_id] == 1 }.count
      @fail = r.select { |item| item[:status_kind_id] == 2 }.count
      @not_implemented = r.select { |item| item[:status_kind_id] == 3 }.count
      @pending = r.select { |item| item[:status_kind_id] == 4 }.count
      @result = [
        "#{t.component.title}\n#{t.version}\n#{e.created_at.strftime('%d/%m/%Y - %H:%M')}",
        @pass, @fail, @not_implemented, @pending]
    end
  end

  def to_google_datatable(results)
    header = ['Выполнено', 'Провалено', 'Не выполнялось', 'В работе']
    (1..4).map do |i|
      {
        name: header[i - 1],
        data: results.map { |x| [x[0], x[i]] }
      }
    end
  end

  def prepare_data_for_project_chart
    all = []
    components = Project.find_by_id(current_state.project.id).components
    components.each do |c|
      unless c.test_objects.count == 0
        t = c.test_objects.last
        unless t.executions.count == 0
          e = t.executions.last
          unless e.nil?
            calculate_result(e)
            all << @result
          end
        end
      end
    end
    to_google_datatable(all)
  end

  def prepare_data_for_component_chart
    test_objects = TestObject.where(component_id: current_state.component)
    results = []
    test_objects.each do |t|
      t.executions.each do |e|
        calculate_result(e)
        results << @result
      end
    end
    to_google_datatable(results)
  end
end
