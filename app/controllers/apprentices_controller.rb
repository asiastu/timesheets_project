class ApprenticesController < ApplicationController
  before_action :set_apprentice, only:[:show, :edit, :update]

  def index
    @apprentices = Apprentice.all
  end

  def show
  end

  def new
    @apprentice = Apprentice.new
  end

  def create
    @apprentice = Apprentice.new(apprentice_params)
    @apprentice.save
    redirect_to apprentice_show(@apprentice)
  end

  def edit
  end

  def update
    @apprentice.update(apprentice_params)
    redirect_to apprentice_show(@apprentice)
  end

private
  def set_apprentice
    @apprentice = Apprentice.find(params[:id])
  end

  def apprentice_params
    params.require(:apprentice).permit(:agency_id, :first_name, :last_name, :trade, :skills, :borough, :address, :personal_statement, :app_start_date, :app_end_date, :college_day, :hourly_rate_cents)
  end

end
