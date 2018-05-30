class ApprenticesController < ApplicationController
  before_action :set_apprentice, only:[:show, :edit, :update]

  def index
    if current_user.role == 'agency'
      @apprentices = policy_scope(Apprentice).where(agency_id: current_user.id)
      @apprentices = [""] if @apprentices == nil
    elsif current_user.role == 'host_invoice_contact'
      @placements = policy_scope(Placement).where(host_invoice_contact_id: current_user.id)
      @apprentices = []
      @placements.each do |placement|
        @apprentices << placement.apprentice
      end
      @apprentices.uniq!
    elsif current_user.role == 'host_validator'
      @placements = policy_scope(Placement).where(host_validator_id: current_user.id)
      @apprentices = []
      @placements.each do |placement|
        @apprentices << placement.apprentice
      end
      @apprentices.uniq!
    end
  end

  def show
    unless current_user == User.find(@apprentice.user_id) || current_user.id == @apprentice.agency_id || current_user.id == @apprentice.placements.where('placements.pl_start_date < ? AND placements.pl_end_date > ?', Date.today, Date.today).first.host_validator_id || current_user.id == @apprentice.placements.where('placements.pl_start_date < ? AND placements.pl_end_date > ?', Date.today, Date.today).first.host_invoice_contact_id
      redirect_to apprentices_path, alert: "You are not allowed to view this apprentice"
    end
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
   # authorize @apprentice
  end

  def apprentice_params
    params.require(:apprentice).permit(:agency_id, :first_name, :last_name, :trade, :skills, :borough, :address, :personal_statement, :app_start_date, :app_end_date, :college_day, :hourly_rate)
  end

  def user_params
    params.require(:apprentice).require(:user).permit(:email, :password)
  end

end
