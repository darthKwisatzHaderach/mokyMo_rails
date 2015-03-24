class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /suites
  # GET /suites.json
  def index
  	@results = Result.all
  end

  # GET /suites/1
  # GET /suites/1.json
  def show
  	@types = ExecutionTypes.all
    @test_objects = TestObject.where(project_id: @current_state.project)
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
