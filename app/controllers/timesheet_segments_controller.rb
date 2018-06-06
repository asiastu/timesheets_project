class TimesheetSegmentsController < ApplicationController
  before_action :set_timesheetsegment, only:[:show, :edit, :update]

  def index
    @timesheetsegments = TimesheetSegment.where(timesheet_id: params[:timesheet_id])
  end

  # def new
  #   @timesheetsegment = Timesheetsegment.new
  #   authorize @timesheetsegment
  # end

  # def create
  #    @timesheetsegment = Timesheetsegment.new(timesheetsegment_params)
  #   @timesheetsegment.save
  #   redirect_to timesheetsegment_show(@timesheetsegment)
  #   authorize @timesheetsegment
  # end

  def edit
  end

  def update
    @timesheetsegment.update!(timesheetsegment_params)
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.js
    end
  end

private

  def set_apprentice
    Apprentice.find(params[:apprentice_id])
  end

  def set_placement
    Placement.find(params[:placement_id])
  end

  def set_timesheet
    Timesheet.find(params[:timesheet_id])
  end

  def set_timesheetsegment
    @timesheetsegment = TimesheetSegment.find(params[:id])
    authorize @timesheetsegment
  end

  def timesheetsegment_params
    params.require(:timesheet_segment).permit(:type_of_work, :hours_worked)
  end
end
