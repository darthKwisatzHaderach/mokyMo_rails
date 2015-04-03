class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /suites
  # GET /suites.json
  def index
    @results = Result.all
  end

  def results_by_versions
    test_objects = TestObject.where(project_id: @current_state.project)
    results = []
    test_objects.each do |t|
      t.executions.each do |e|
        r = e.results
        pass = r.select { |item| item[:results] == true }.count
        fail = r.select { |item| item[:results] == false }.count
        not_implemented = r.select { |item| item[:implemented] == false }.count
        result = ["#{t.version}", pass, fail, not_implemented]
        results << result
      end
    end
    render json: results
  end

  def last_execution
    test_object = TestObject.where(project_id: @current_state.project).last
    execution = test_object.executions.last
    r = execution.results
    pass = r.select { |item| item[:results] == true }.count
    fail = r.select { |item| item[:results] == false }.count
    not_implemented = r.select { |item| item[:implemented] == false }.count
    result = [
      ['Выполнено', pass],
      ['Не выполнено', fail],
      ['Не запускалось', not_implemented]
    ]
    render json: result
  end

  # GET /suites/1
  # GET /suites/1.json
  def show
    @execution = Execution.find_by_id(params[:id])
    r = @execution.results
    array = [
      ['№', 'Название', 'Описание', 'Комплект', 'Приоритет', 'Результат']
    ]
    pass = r.select { |item| item[:results] == true }.count
    fail = r.select { |item| item[:results] == false }.count
    not_implemented = r.select { |item| item[:implemented] == false }.count
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new(page_layout: :landscape)
        r.each_with_index do |result, index|
          if result.results == true
            res = 'Выполнен'
          else
            res = 'Провален'
          end
          font = '/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf'
          pdf.font font
          array << [
            "#{index + 1}",
            "#{result.check_list.title}",
            "#{result.check_list.description}",
            "#{result.check_list.suite.title}",
            "#{result.check_list.priority}",
            "#{res}"
          ]
        end
        pdf.text 'Отчет о тестировании', align: :center, size: 20
        pdf.table([
          ["Объект тестирования:", "#{@execution.test_object.name}", '', "Выполнены успешно:", "#{pass}"],
          ["Версия:", "#{@execution.test_object.version}", '', "Провалены:", "#{fail}"],
          ["Проект:", "#{@execution.test_object.project.title}", '', "Не запускались:", "#{not_implemented}"],
          ["Дата:", "#{r[0].created_at}", '', "Всего:", "#{pass + fail}"]
          ], column_widths: [140, 180, 180, 150, 50], cell_style: {border_width: 0})
        pdf.text ' '
        pdf.text "Список чек-листов", align: :center, size: 16
        pdf.table(array, column_widths: [25, 100, 345, 120, 65, 65])
=begin
        do |variable|
          values = cells.columns(1..-1).rows(1..-1)
          bad_sales = values.filter do |cell|
            cell.content.to_i < 40
          end
          bad_sales.background_color = 'FFAAAA'
          good_sales = values.filter do |cell|
            cell.content.to_i > 70
          end
          good_sales.background_color = 'AAFFAA'
        end
=end
        send_data pdf.render, filename: "#{@execution.test_object.name} - #{@execution.test_object.version}. Результат тестирования.pdf", type: 'application/pdf', disposition: 'inline'
      end
    end
  end

  # GET /suites/new
  def new
    @result = Result.new
    @types = ExecutionTypes.all
    @test_objects = TestObject.where(project_id: @current_state.project)
  end

  # GET /suites/1/edit
  def edit
  end

  # POST /suites
  # POST /suites.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Тестирование успешно создано.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suites/1
  # PATCH/PUT /suites/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Тестирование успешно обновлено.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suites/1
  # DELETE /suites/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Тестирование успешно удалено.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      #@result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit!
    end
end
