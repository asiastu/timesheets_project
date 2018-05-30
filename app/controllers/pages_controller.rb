class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @apprentice = Apprentice.where(user_id: current_user.id).first
    # @timesheet = Timesheet.where(xxx)
  end
end
