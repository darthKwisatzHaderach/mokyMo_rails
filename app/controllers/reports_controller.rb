#encoding: utf-8

class ReportsController < ApplicationController
  def show  	
    @check_lists = CheckList.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
          @check_lists.each do |list|
          	pdf.font "/home/dmitriy/RubymineProjects/mokyMo/app/assets/fonts/pfdintextpro-regular.ttf"
          	pdf.text "#{list.title}".encode('utf-8')          	
          	pdf.text "#{list.description}".encode('utf-8')
          	pdf.text " "
          end
        send_data pdf.render, filename: "list.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
end
