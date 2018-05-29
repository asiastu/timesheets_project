class TimesheetsController < ApplicationController
  # before_action :set_timesheet, only: [:show, :edit, :update]

  def index
    @timesheets = Timesheet.all
  end

  def show
  end

  def edit

  end

  def update

  end

  def new

  end

  def create

  end

  private

  # def set_timesheet
  #   @timesheet = Timesheet.find(timesheet_params)
  # end

  # def timesheet_params
  #   params.require(:timesheet).permit!
  # end
end
