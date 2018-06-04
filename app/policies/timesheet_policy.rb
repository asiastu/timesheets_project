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
    user.agency? || user.apprentice? || (user.host_validator? && record.placement.host_validator_id == user.id)
  end

end
