class CaseStepsController < ApplicationController
  before_action :set_case_step, only: [:show, :edit, :update, :destroy]

  # GET /case_steps
  # GET /case_steps.json
  def index
    @case_steps = CaseStep.all
  end

  # GET /case_steps/1
  # GET /case_steps/1.json
  def show
  end

  # GET /case_steps/new
  def new
    @case_step = CaseStep.new()
  end

  # GET /case_steps/1/edit
  def edit
    @steps = CaseStep.where(:id => params[:id])
  end

  # POST /case_steps
  # POST /case_steps.json
  def create
    @case_step = CaseStep.new(case_step_params)

    respond_to do |format|
      if @case_step.save
        format.html { redirect_to case_with_steps_path(@case_step.case_id) }
        format.json { render :show, status: :created, location: @case_step }
      else
        format.html { redirect_to case_with_steps_path(@case_step.case_id) }
        format.json { render json: @case_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_steps/1
  # PATCH/PUT /case_steps/1.json
  def update
    respond_to do |format|
      if @case_step.update(case_step_params)
        format.html { redirect_to @case_step, notice: 'Case step was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_step }
      else
        format.html { render :edit }
        format.json { render json: @case_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_steps/1
  # DELETE /case_steps/1.json
  def destroy
    @case_step.destroy
    respond_to do |format|
      format.html { redirect_to case_steps_url, notice: 'Case step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_step
      @case_step = CaseStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_step_params
      params.require(:case_step).permit(:step, :step_result, :case_id)      
    end
end
