class InvoicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end

      def show?
        record.user == user || !user_is_host?
      end

    private
    def user_is_host?
      user.role == 'host'
    end
end
