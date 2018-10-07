module AbilityConcern::RoleAdmin
  extend ActiveSupport::Concern

  included do
    def admin
      can :manage, :all
    end
  end
end
