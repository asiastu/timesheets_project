class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @apprentice = Apprentice.where(user: current_user).first
    # @timesheet = Timesheet.where(xxx)
  end

  def timesheets
    if current_user.role == 'agency'
      @apprentices = policy_scope(Apprentice).where(agency_id: current_user.id)
      @apprentices = [""] if @apprentices == nil
      @placements = []
      @apprentices.each do |apprentice|
        @placements << apprentice.placements
      end
      @placements.uniq!
      @placements = [""] if @placements == nil
      @timesheets = []
      @placements.each do |placement|
        @timesheets << placement.first.timesheets
      end
    else
      if current_user.role == 'apprentice'
        @placements = Placement.where(apprentice_id: current_user.apprentice.id)

      elsif current_user.role == 'host_invoice_contact'
        @placements = policy_scope(Placement).where(host_invoice_contact_id: current_user.id)

      elsif current_user.role == 'host_validator'
        @placements = policy_scope(Placement).where(host_validator_id: current_user.id)
      end
      @placements = [""] if @placements == nil
      @timesheets = []
      @placements.each do |placement|
        @timesheets << placement.timesheets
      end
    end
  end
end
