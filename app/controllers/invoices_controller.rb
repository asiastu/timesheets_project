class InvoicesController < ApplicationController

  def show
     @invoice = invoice.find(params[:id])
   end

   def index
     @invoice = Invoice.all
   end

end
