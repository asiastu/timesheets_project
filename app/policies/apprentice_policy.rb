class ApprenticePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.agency? || user.host_invoice_contact? || user.host_validator?
  end

  def create?
    user.agency?
  end

  def update?
    user.agency? || record.user == user
  end

  def show?
    record.user == user ||
    user.agency? ||
    user.host_invoice_contact? ||
    user.host_validator?
  end
end
