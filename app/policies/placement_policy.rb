class PlacementPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

  end
  def index
    user.role == "agency"
  end
end
