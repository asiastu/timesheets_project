class TimesheetSegmentsController < ApplicationController

  def index
    @timesheetsegments = TimesheetSegment.where(timesheet_id: params[:timesheet_id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
