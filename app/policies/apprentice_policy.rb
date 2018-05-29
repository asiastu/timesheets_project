class ApprenticePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end

def create?
    user_is_apprentice?
  end

  def update?
    record.user == user || user_is_apprentice?
  end

  def show?
    record.user == user || !user_is_apprentice?
  end

  def destroy?
    record.user == user
  end


private
def user_is_apprentice?
  user.role == 'apprentice'
end
end
