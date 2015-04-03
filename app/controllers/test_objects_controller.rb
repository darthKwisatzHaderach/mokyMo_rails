class TestObjectsController < ApplicationController
  before_action :set_test_object, only: [:show, :edit, :update, :destroy]

  # GET /suites
  # GET /suites.json
  def index
    @test_objects = TestObject.where(project_id: @current_state.project)
  end

  # GET /suites/1
  # GET /suites/1.json
  def show
  end

  # GET /suites/new
  def new
    @test_object = TestObject.new
    @projects = Project.all
  end

  # GET /suites/1/edit
  def edit
    @projects = Project.all
  end

  # POST /suites
  # POST /suites.json
  def create
    @test_object = TestObject.new(test_object_params)

    respond_to do |format|
      if @test_object.save
        format.html { redirect_to @test_object, notice: 'Объект тестирования успешно создан.' }
        format.json { render :show, status: :created, location: @test_object }
      else
        format.html { render :new }
        format.json { render json: @test_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suites/1
  # PATCH/PUT /suites/1.json
  def update
    respond_to do |format|
      if @test_object.update(test_object_params)
        format.html { redirect_to @test_object, notice: 'Объект тестирования успешно обновлен.' }
        format.json { render :show, status: :ok, location: @test_object }
      else
        format.html { render :edit }
        format.json { render json: @test_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suites/1
  # DELETE /suites/1.json
  def destroy
    @test_object.destroy
    respond_to do |format|
      format.html { redirect_to test_objects_url, notice: 'Объект тестирования успешно удален.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_test_object
    @test_object = TestObject.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def test_object_params
    params.require(:test_object).permit(:name, :version, :project_id)
  end
end
