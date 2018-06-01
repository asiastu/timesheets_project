class TimesheetsController < ApplicationController
  before_action :set_timesheet, only: [:show, :edit, :update]

  def index
    @placement = Placement.find(params[:placement_id])
    if (current_user.apprentice? && !current_user.apprentice.placements.where(id: @placement.id).nil?) ||
    (current_user.agency? && @placement.apprentice.agency_id == current_user.id) ||
    (current_user.host_validator? && @placement.host_validator_id == current_user.id) ||
    (current_user.host_invoice_contact? && @placement.host_invoice_contact_id == current_user.id)
      @timesheets = policy_scope(Timesheet).where(placement_id: @placement.id)
    else
      @timesheets = policy_scope(Timesheet)
      @timesheets = [] if @timesheets.nil?
    end
    authorize @timesheets
  end

  def show
    @timesheetsegments = TimesheetSegment.where(timesheet_id: params[:id])
    @apprentice = Apprentice.find(params[:apprentice_id])
    @placement = Placement.find(params[:placement_id])
    @timesheet = Timesheet.find(params[:id])
  end

  def edit
    @timesheetsegments = TimesheetSegment.where(timesheet_id: params[:id])
    @apprentice = Apprentice.find(params[:apprentice_id])
    @placement = Placement.find(params[:placement_id])
    @timesheet = Timesheet.find(params[:id])
    @type_of_work = ['On Site', 'College', 'Off sick', 'Holiday']
  end

  def update

  end

  def new
    @timesheet = Timesheet.new
    @timesheet_segment = Timesheet_Segment.new
    authorize @timesheet
  end

  def create
    @timesheet = Timesheet.new
    @timesheet_segment = Timesheet_Segment.new
    authorize @timesheet
  end

  private

  def set_timesheet
    @timesheet = Timesheet.find(params[:id])
    authorize @timesheet
  end

  # def timesheet_params
  #   params.require(:timesheet).permit!
  # end
end
