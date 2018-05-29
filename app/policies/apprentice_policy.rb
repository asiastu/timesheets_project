class ApprenticePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  
  def create?
    user.role == 'agency'
  end

  def update?
    user.role == 'agency' || record.user == user
  end

  def show?
    record.user == user || user.role == 'agency' # || (user.role == 'host_validator' && user.placement == record.placement)
  end

  private
  
  def user_is_apprentice?
    user.role == 'apprentice'
  end

end
