class InvoicesController < ApplicationController

  def show
     @invoice = Invoice.find(params[:id])
   end

   def index
     @invoice = Invoice.all
   end

end
