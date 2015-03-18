class ReportsController < ApplicationController
  def show
    @check_list = CheckList.find(params[:id])
    respond_to do |format|
      #format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Hello world"
        send_data pdf.render, filename: "list.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
end
