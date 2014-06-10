class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]

  # GET /cases
  # GET /cases.json
  def index
    @cases = Case.all
  end

  # GET /cases/1
  # GET /cases/1.json
  def show
    @cases = Case.all    
  end

  def case_with_steps    
    @case = Case.where(:id => params[:id]).first
    @steps = CaseStep.where(:case_id => @case.id)
  end

  # GET /cases/new
  def new    
    @case = Case.new  
    @suites_list = suites_list  
  end

  # GET /cases/1/edit
  def edit
    @suites_list = suites_list  
  end

  # POST /cases
  # POST /cases.json
  def create
    @case = Case.new(case_params)

    respond_to do |format|
      if @case.save
        format.html { redirect_to new_case_case_step_path(@case.id) }
        format.json { render :show, status: :created, location: @case }
      else
        format.html { render :new }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cases/1
  # PATCH/PUT /cases/1.json
  def update
    respond_to do |format|
      if @case.update(case_params)
        format.html { redirect_to edit_case_case_step_path(@case.id) }
        format.json { render :show, status: :ok, location: @case }
      else
        format.html { render :edit }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cases/1
  # DELETE /cases/1.json
  def destroy
    @case.destroy
    respond_to do |format|
      format.html { redirect_to cases_url, notice: 'Case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case
      @case = Case.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_params
      params.require(:case).permit(:title, :date, :priority, :planned_duration, :tags, :objective, :test_data, :preconditions, :comment, :suite_id)      
    end

    def suites_list
      suites_list = []
      suites = Suite.all
      suites.each do |suite|
        suites_list << [suite.title, suite.id]
      end
      return suites_list
    end
end
