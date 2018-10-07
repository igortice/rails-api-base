module AbilityConcern::RoleUser
  extend ActiveSupport::Concern

  included do
    def user
      can [:index], User
    end
  end
end
