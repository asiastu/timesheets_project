class TimesheetSegmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    user.apprentice? || user.agency?
  end

end
