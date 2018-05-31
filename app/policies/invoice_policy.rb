class InvoicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    user.host_invoice_contact? && record.placement == user.placement
  end
end
