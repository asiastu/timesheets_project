class PlacementPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def create?
    user.agency?
  end

  def index?
    true
  end

  def create?
    user.agency?
  end

  def update?
    user.agency?
  end


  def show?
    true
  end
end
