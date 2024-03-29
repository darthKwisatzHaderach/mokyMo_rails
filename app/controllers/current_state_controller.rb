class CurrentStateController < ApplicationController
  before_action :set_current_state, only: [:show, :edit, :update, :destroy]

  def show
    @current_state = CurrentState.first
  end

  def create
    @current_state = CurrentState.new(current_state_params)

    respond_to do |format|
      if @current_state.save
        format.html { redirect_to "/", notice: 'CurrentState was successfully created.' }
        format.json { render :root, status: :created, location: @current_state }
      else
        format.html { render :new }
        format.json { render json: @current_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @current_state.update(current_state_params)
        format.html { redirect_to "/", notice: 'CurrentState was successfully updated.' }
        format.json { render :root, status: :ok, location: @current_state }
      else
        format.html { render :edit }
        format.json { render json: @current_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @current_state.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'CurrentState was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_current_state
    @current_state = CurrentState.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def current_state_params
    params.require(:current_state).permit(:project_id, :component_id)
  end
end
