class ApprenticePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    true
    # user.role == 'agency'
  end
end
