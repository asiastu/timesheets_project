class PlacementsController < ApplicationController
  before_action :set_placement, only: [:show, :edit, :update]
  def index
    @apprentice = Apprentice.find(params[:apprentice_id])
    @placements =  policy_scope(Placement)
    @placements = [""] if @placements == nil
  end

  def show

  end

  def new

    @placement = Placement.new

    authorize @placement
  end

  def create
    @apprentice = User.find(params[:placement][:apprentice_id].split.first).apprentice
    @host_validator = User.find(params[:placement][:host_validator_id].split.first)
    @host_invoicer = User.find(params[:placement][:host_invoice_contact_id].split.first)
    @placement = Placement.new
    @placement.apprentice = @apprentice
    @placement.pl_start_date = @placement.pl_start_date
    @placement.pl_end_date = @placement.pl_end_date
    redirect_to apprentices_path
    authorize @placement
  end

  def edit
    @apprentice = Apprentice.find(params[:apprentice_id])
  end

  def update
    @apprentice = Apprentice.find(params[:apprentice_id])
    @host_validator = User.find(params[:placement][:host_validator_id].split.first)
    @host_invoicer = User.find(params[:placement][:host_invoice_contact_id].split.first)
    @placement.update(placement_params)
    @placement.pl_start_date = @placement.pl_start_date.strftime('%a, %d %B %Y')
    @placement.pl_end_date = @placement.pl_end_date.strftime('%a, %d %B %Y')
    redirect_to apprentice_placement_path

    #if dates change, do job "update timesheets" (create it), add/delete timesheets as needed
  end

  private

  def set_placement
    @placement = Placement.find(params[:id])
    authorize @placement
  end

  def placement_params
    params.require(:placement).permit(:pl_start_date, :pl_end_date, :address, :interview_date, :hourly_rate)
  end
end
