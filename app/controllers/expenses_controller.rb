class ExpensesController < ApplicationController
  before_action :set_expenses, only:[:edit, :update, :destroy]

 def create
    @expense = Expense.new(expenses_params)
    @expense.save
  end

  def update
    set_expenses
    @expense.update(params[expenses_params])
  end

  def destroy
    set_expenses
    @expense.destroy
  end

  def edit
    set_expenses
  end

 private

 def expenses_params
   params.require(:expenses).permit(:amount_cents)
 end

  def set_expenses
    @expense = Expense.find(params[:id])
  end

end
