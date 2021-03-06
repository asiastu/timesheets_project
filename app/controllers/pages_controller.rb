class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @apprentice = Apprentice.where(user: current_user).first
  end

  def dashboard
    @apprentice = Apprentice.where(user: current_user).first
    @type_of_work = ['On Site', 'College', 'Off sick', 'Holiday', 'Not working']
    @timesheets = []

    if current_user.apprentice?
      @placements = current_user.apprentice.placements
      @placements.each do |placement|
        timesheets = placement.timesheets.where(status: 'Pending').where('week_start <= ?', Date.today).or(placement.timesheets.where(status: 'Rejected'))
        timesheets.each do |timesheet|
          unless timesheet.nil?
            @timesheets << timesheet
          end
        end
        @timesheet = @timesheets.first
      end

    elsif current_user.agency?
      @agency_apprentices = current_user.apprentices
      @agency_placements = []
      @agency_apprentices.each do |apprentice|
        unless apprentice.placements.first.nil?
          @agency_placements << apprentice.placements
        end
      end
      @agency_placements.flatten!.each do |placement|
        selected_timesheets = placement.timesheets.where(status: 'Pending').where('week_start <= ?', Date.today).or(placement.timesheets.where(status: 'Rejected'))
        selected_timesheets.each do |timesheet|
          unless timesheet.nil?
            @timesheets << timesheet
          end
        end
      end

    elsif current_user.host_invoice_contact?
      host_placements = current_user.invoice_placements
      host_apprentices = []
      host_placements.each do |placement|
        selected_timesheets = placement.timesheets.where(status: 'Submitted').where('week_start <= ?', Date.today).or(placement.timesheets.where(status: 'Rejected')).or(placement.timesheets.where(status: 'Accepted'))
        selected_timesheets.each do |timesheet|
          unless timesheet.nil?
            @timesheets << timesheet
          end
        end
      end

    elsif current_user.host_validator?
      host_placements = current_user.hosted_placements
      host_apprentices = []
      host_placements.each do |placement|
        selected_timesheets = placement.timesheets.where(status: 'Submitted').where('week_start <= ?', Date.today)
        selected_timesheets.each do |timesheet|
          unless timesheet.nil?
            @timesheets << timesheet
          end
        end
      end
    end
  end

  def timesheets
    if current_user.agency?
      @apprentices = policy_scope(Apprentice).where(agency_id: current_user.id)
      @apprentices = [""] if @apprentices.nil?
      @placements = []
      @apprentices.each do |apprentice|
        @placements << apprentice.placements
      end
      @placements.uniq!
      @placements = [""] if @placements.nil?
      @show_timesheets = []
      @placements.each do |placement|
        @show_timesheets << placement.first.timesheets
      end
      @show_timesheets.flatten!
    else
      if current_user.apprentice?
        @apprentice = Apprentice.where(user_id: current_user.id).first
        @placements = Placement.where(apprentice_id: current_user.apprentice.id)

      elsif current_user.host_invoice_contact?
        @placements = policy_scope(Placement).where(host_invoice_contact_id: current_user.id)

      elsif current_user.host_validator?
        @placements = policy_scope(Placement).where(host_validator_id: current_user.id)
      end

      @placements = [""] if @placements.nil?
      @show_timesheets = []
      @placements.each do |placement|
        timesheets = placement.timesheets
        timesheets.each do |timesheet|
          unless timesheet.nil?
            @show_timesheets << timesheet
          end
        end
      end
    end
  end
end
