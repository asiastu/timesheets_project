class PlacementPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def create?
    user_is_host?
  end

  def index?
    true
  end

  def create?
    user.role == 'agency'
  end

  def update?
    user.role == 'agency'
  end


  def show?
    true
  end
end
