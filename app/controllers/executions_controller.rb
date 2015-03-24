class ExecutionsController < ApplicationController
  before_action :set_execution, only: [:show, :edit, :update, :destroy]

  # GET /suites
  # GET /suites.json
  def index
  	@executions = Execution.all
  end

  # GET /suites/1
  # GET /suites/1.json
  def show
  	@types = ExecutionTypes.all
    @test_objects = TestObject.where(project_id: @current_state.project)
  end

  # GET /suites/new
  def new
    @execution = Execution.new    
    @types = ExecutionTypes.all
    @test_objects = TestObject.where(project_id: @current_state.project)
    @component = Component.find_by(id: @current_state.component)
  end

  # GET /suites/1/edit
  def edit
  end

  # POST /suites
  # POST /suites.json
  def create
    @execution = Execution.new(execution_params)

    respond_to do |format|
      if @execution.save
        format.html { redirect_to @execution, notice: 'Тестирование успешно создано.' }
        format.json { render :show, status: :created, location: @execution }
      else
        format.html { render :new }
        format.json { render json: @execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suites/1
  # PATCH/PUT /suites/1.json
  def update
    respond_to do |format|
      if @execution.update(execution_params)
        format.html { redirect_to @execution, notice: 'Тестирование успешно обновлено.' }
        format.json { render :show, status: :ok, location: @execution }
      else
        format.html { render :edit }
        format.json { render json: @execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suites/1
  # DELETE /suites/1.json
  def destroy
    @execution.destroy
    respond_to do |format|
      format.html { redirect_to executions_url, notice: 'Тестирование успешно удалено.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_execution
      @execution = Execution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def execution_params
      params.require(:execution).permit!#(:test_object_id, :execution_types_id, results_attributes: [:id, :_destroy, :check_list_id])
    end
end
