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
    user.agency? || user.apprentice?
  end

end
