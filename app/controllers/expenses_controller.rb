class ExpensesController < ApplicationController
  before_action :set_expenses, only:[:edit, :update, :destroy]

 def create
    @expense = Expense.new(expenses_params)
    @expense.save
  end

  def update
    @expense.update(expenses_params)
  end

  def destroy
    @expense.destroy
  end

  def edit
  end

 private

 def expenses_params
   params.require(:expenses).permit(:amount)
 end

  def set_expenses
    @expense = Expense.find(params[:id])
  end

end
