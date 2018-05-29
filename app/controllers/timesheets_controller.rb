class TimesheetsController < ApplicationController
  before_action :set_timesheet, only: [:show, :edit, :update]

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
    @timesheet = Timesheet.new
    @timesheet_segment = Timesheet_Segment.new
  end

  def create
    @timesheet = Timesheet.new
    @timesheet_segment = Timesheet_Segment.new
  end

  private

  def set_timesheet
    @timesheet = Timesheet.find(params[:id])
  end

  # def timesheet_params
  #   params.require(:timesheet).permit!
  # end
end