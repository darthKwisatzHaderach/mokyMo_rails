class SuitesController < ApplicationController
  before_action :set_suite, only: [:show, :edit, :update, :destroy]

  # GET /suites
  # GET /suites.json
  def index
    @suites = Suite.all
  end

  # GET /suites/1
  # GET /suites/1.json
  def show
  end

  # GET /suites/new
  def new
    @suite = Suite.new
    @components = Component.where(project_id: Project.where(id: CurrentState.first.project).first)
  end

  # GET /suites/1/edit
  def edit
    @components = Component.where(project_id: Project.where(id: CurrentState.first.project).first)
  end

  # POST /suites
  # POST /suites.json
  def create
    @suite = Suite.new(suite_params)

    respond_to do |format|
      if @suite.save
        format.html { redirect_to @suite, notice: 'Тест-комплект успешно создан.' }
        format.json { render :show, status: :created, location: @suite }
      else
        format.html { render :new }
        format.json { render json: @suite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suites/1
  # PATCH/PUT /suites/1.json
  def update
    respond_to do |format|
      if @suite.update(suite_params)
        format.html { redirect_to @suite, notice: 'Тест-комплект успешно обновлен.' }
        format.json { render :show, status: :ok, location: @suite }
      else
        format.html { render :edit }
        format.json { render json: @suite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suites/1
  # DELETE /suites/1.json
  def destroy
    @suite.destroy
    respond_to do |format|
      format.html { redirect_to suites_url, notice: 'Тест-комплект успешно удален.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suite
      @suite = Suite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suite_params
      params.require(:suite).permit(:title, :priority, :tags, :component_id)            
    end
end
