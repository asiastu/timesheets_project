class ApprenticesController < ApplicationController
  before_action :set_apprentice, only:[:show, :edit, :update]

  def index
    if current_user.role == 'agency'
      @apprentices = policy_scope(Apprentice).all
      @apprentices = [""] if @apprentices == nil
    elsif current_user.role == 'host_invoice_contact'
      @placements = policy_scope(Placement).where(host_invoice_contact_id: current_user.id)
      @apprentices = []
      @placements.each do |placement|
        @apprentices << placement.apprentice
      end
      @apprentices.uniq!
    end
  end

  def show
  end

  def new
    @apprentice = Apprentice.new
  end

  def create
    @apprentice = Apprentice.new(apprentice_params)
    @apprentice.save
    redirect_to
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
    authorize @apprentice
  end

  def apprentice_params
    params.require(:apprentice).permit(:agency_id, :first_name, :last_name, :trade, :skills, :borough, :address, :personal_statement, :app_start_date, :app_end_date, :college_day, :hourly_rate)
  end

  def user_params
    params.require(:apprentice).require(:user).permit(:email, :password)
  end

end
