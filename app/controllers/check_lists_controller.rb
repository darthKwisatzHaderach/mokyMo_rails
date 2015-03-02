class CheckListsController < ApplicationController
  before_action :set_check_list, only: [:show, :edit, :update, :destroy]

  def index
  	@check_lists = CheckList.all
  end

  def show
  end

  # GET /projects/new
  def new
    @check_list = CheckList.new
    @suites_list = suites_list
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @check_list = CheckList.new(check_list_params)

    respond_to do |format|
      if @check_list.save
        format.html { redirect_to @check_list, notice: 'Чек-лист успешно добавлен.' }
        format.json { render :show, status: :created, location: @check_list }
      else
        format.html { render :new }
        format.json { render json: @check_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @check_list.update(check_list_params)
        format.html { redirect_to @check_list, notice: 'Чек-лист успешно обновлен.' }
        format.json { render :show, status: :ok, location: @check_list }
      else
        format.html { render :edit }
        format.json { render json: @check_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @check_list.destroy
    respond_to do |format|
      format.html { redirect_to chek_lists_url, notice: 'Чек-лист успешно удален.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_list
      @check_list = CheckList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_list_params
      params.require(:check_list).permit(:title)
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
