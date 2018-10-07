module AbilityConcern::RoleUser
  extend ActiveSupport::Concern

  included do
    def user
    end
  end
end
