class TimesheetSegmentsController < ApplicationController
  before_action :set_timesheetsegment, only:[:show, :edit, :update]

  def index
    @timesheetsegments = TimesheetSegment.where(timesheet_id: params[:timesheet_id])
  end

  def new
    @timesheetsegment = Timesheetsegment.new
  end

  def create
     @timesheetsegment = Timesheetsegment.new(timesheetsegment_params)
    @timesheetsegment.save
    redirect_to timesheetsegment_show(@timesheetsegment)
  end

  def edit
  end

  def update
    @timesheetsegment.update(timesheetsegment_params)
    redirect_to timesheetsegment_show(@timesheetsegment)
  end

private

def set_timesheetsegment
    @timesheetsegment = Timesheetsegment.find(params[:id])
  end

  def timesheetsegment_params
    params.require(:timesheetsegment).permit(:hours_worked, :type_of_work)
  end

end
