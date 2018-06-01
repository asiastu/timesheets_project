class TimesheetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def update?
    user.agency? || (user.apprentice? && user.apprentice.placements.where(id: params[:placement_id]) == Placement.find(params[:placement_id]))
  end

end
