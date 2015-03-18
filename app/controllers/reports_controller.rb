#encoding: utf-8
require 'prawn/table'

class ReportsController < ApplicationController
  def show
  	array = [["Название", "Описание"]]
    @check_lists = CheckList.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
          @check_lists.each do |list|
          	pdf.font "/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf"
          	array << ["#{list.title}", "#{list.description}"]
          end        
        pdf.table(array)
        send_data pdf.render, filename: "list.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
end
