class PlacementPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
<<<<<<< HEAD

      def create?
        user_is_host?
      end
=======
>>>>>>> 9dc8f573c93ad02f1e27424685ea381bb1ba543d

  def index
    true
  end

  def create?
    user.role == 'agency'
  end

<<<<<<< HEAD
      def index?
        record.user == user || user_is_host?
      end
=======
  def update?
    user.role == 'agency'
  end
>>>>>>> 9dc8f573c93ad02f1e27424685ea381bb1ba543d

  def show?
    true
  end
end
