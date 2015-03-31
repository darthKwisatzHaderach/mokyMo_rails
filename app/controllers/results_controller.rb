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
        pass = e.results.select{|item| item[:results] == true}.count
        fail = e.results.select{|item| item[:results] == false}.count
        not_implemented = e.results.select{|item| item[:implemented] == false}.count
        result = ["#{t.version}", pass, fail, not_implemented]
        results << result
      end
    end
    render json: results
  end

  def last_execution
    test_objects = TestObject.where(project_id: @current_state.project)
    test_object = test_objects.last    
    execution = test_object.executions.last    
    pass = execution.results.select{|item| item[:results] == true}.count
    fail = execution.results.select{|item| item[:results] == false}.count
    not_implemented = execution.results.select{|item| item[:implemented] == false}.count
    result = [['Выполнено', pass], ["Не выполнено", fail], ["Не запускалось", not_implemented]]
    render json: result
  end

  # GET /suites/1
  # GET /suites/1.json
  def show
    @types = ExecutionTypes.all
    @test_objects = TestObject.where(project_id: @current_state.project)
    @execution = Execution.find_by_id(params[:id])
    array = [['№', 'Название', 'Описание', 'Комплект', 'Приоритет', 'Результат']]
    @execution = Execution.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new(page_layout: :landscape)
        @execution.results.each_with_index do |r, index|
          pdf.font '/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf'
          array << ["#{index+1}", "#{r.check_list.title}", "#{r.check_list.description}", "#{r.check_list.suite.title}", "#{r.check_list.priority}", "#{r.results}"]
        end
        pdf.text "#{@project_state}: чек-листы", align: :center, size: 16
        pdf.table(array, column_widths: [25, 100, 345, 120, 65, 65])
        send_data pdf.render, filename: 'r.pdf', type: 'application/pdf', disposition: 'inline'
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
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit!
    end
end
