class ApprenticePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.role == 'agency' || user.role == 'host_invoice_contact' || user.role == 'host_validator'
  end

  def create?
    user.role == 'agency'
  end

  def update?
    user.role == 'agency' || record.user == user
  end

  def show?
    record.user == user ||
    user.role == 'agency' ||
    user.role == 'host_invoice_contact' ||
    user.role == 'host_validator'
  end

  private

  def user_is_apprentice?
    user.role == 'apprentice'
  end

end
