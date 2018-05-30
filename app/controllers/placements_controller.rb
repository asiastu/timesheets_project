class PlacementsController < ApplicationController
  before_action :set_placement, only: [:show, :edit, :update]
  def index
    # @placements = policy_scope(Placement)
    @placements = Placement.all
    @placements = [""] if @placements == nil
    authorize @placement
  end

  def show
  end

  def new
    @apprentice = Apprentice.find(params[:apprentice_id])
    @placement = Placement.new
    authorize @placement
  end

  def create
    @apprentice = Apprentice.find(params[:apprentice_id])
    @placement = Placement.new
    @placement.apprentice = @apprentice
    @placement.pl_start_date = @placement.pl_start_date.strftime('%a, %d %B %Y')
    @placement.pl_end_date = @placement.pl_end_date.strftime('%a, %d %B %Y')
    @placement.save
    redirect_to apprentice_path
    authorize @placement
  end

  def edit
  end

  def update
    @placement.update(placement_params)
    @placement.pl_start_date = @placement.pl_start_date.strftime('%a, %d %B %Y')
    @placement.pl_end_date = @placement.pl_end_date.strftime('%a, %d %B %Y')
    redirect_to apprentice_placement_path
  end

  private

  def set_placement
    @placement = Placement.find(placement_params)
    authorize @placement
  end

  def placement_params
    params.require(:placement).permit(:pl_start_date, :pl_end_date, :address, :interview_date, :hourly_rate)
  end
end
