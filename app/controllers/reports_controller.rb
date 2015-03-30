#encoding: utf-8

class ReportsController < ApplicationController
  def show
  	array = [["№", "Название", "Описание", "Комплект", "Приоритет"]]
    @check_lists = CheckList.all
    @check_lists = @check_lists.sort_by &:priority
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
          @check_lists.each_with_index do |list, index|
          	pdf.font "/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf"
          	array << ["#{index+1}", "#{list.title}", "#{list.description}", "#{list.suite.title}", "#{list.priority}"]
          end        
        pdf.text "#{@project_state}: чек-листы", align: :center, size: 16        
        pdf.table(array, :column_widths => [25, 100, 230, 120, 65])
        send_data pdf.render, filename: "list.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end

  def index
    @executions = Execution.all.order('created_at DESC')
  end

  def execution
    array = [["№", "Название", "Описание", "Комплект", "Приоритет"]]
    @execution = Execution.find_by_id(params[:id])    
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
          @execution.results.each_with_index do |r, index|
            pdf.font "/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf"
            array << ["#{index+1}", "#{r.title}", "#{r.description}", "#{r.suite.title}", "#{r.priority}"]
          end        
        pdf.text "#{@project_state}: чек-листы", align: :center, size: 16        
        pdf.table(array, :column_widths => [25, 100, 230, 120, 65])
        send_data pdf.render, filename: "r.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
end
