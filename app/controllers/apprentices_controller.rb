class ApprenticesController < ApplicationController
  before_action :set_apprentice, only:[:show, :edit, :update]

  def index
    if current_user.agency?
      @apprentices = policy_scope(Apprentice).where(agency_id: current_user.id)
      @apprentices = [""] if @apprentices.nil?
    elsif current_user.host_invoice_contact?
      @placements = policy_scope(Placement).where(host_invoice_contact_id: current_user.id)
      if @placements.nil?
        @placements = [""]
      else
        @apprentices = []
        @placements.each do |placement|
          @apprentices << placement.apprentice
        end
      end
      @apprentices.uniq!
    elsif current_user.host_validator?
      @placements = policy_scope(Placement).where(host_validator_id: current_user.id)
      @apprentices = []
      @placements.each do |placement|
        @apprentices << placement.apprentice
      end
      @apprentices.uniq!
    elsif current_user.apprentice?
      @apprentices = []
      @apprentices << Apprentice.find_by(user_id: current_user.id)
    end
  end

  def show
    placement_selection = @apprentice.placements.where('placements.pl_start_date <= ? AND placements.pl_end_date >= ?', Date.today, Date.today).first
    unless placement_selection.nil?
      unless current_user.id == @apprentice.agency_id || current_user == User.find(@apprentice.user_id) || @apprentice.placements.where(host_validator_id: current_user.id).first.present? || current_user.id == @apprentice.placements.where(host_invoice_contact_id: current_user.id).first.present?
        redirect_to apprentices_path, alert: "You are not allowed to view this apprentice"
      end
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
    redirect_to apprentice_path(@apprentice)
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
