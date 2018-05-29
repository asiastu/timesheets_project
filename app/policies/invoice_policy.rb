class InvoicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    user.role == 'host_invoice_contact' && record.placement == user.placement
  end

  private

  def user_is_host?
    user.role == 'host'
  end
end
