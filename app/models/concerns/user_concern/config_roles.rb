module UserConcern::ConfigRoles
  extend ActiveSupport::Concern

  included do
    ROLES = %i[admin user]

    def roles=(roles)
      roles           = [*roles].map { |r| r.to_sym }
      self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
    end

    def roles
      ROLES.reject do |r|
        ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
      end
    end

    def has_role?(role)
      roles.include?(role)
    end
  end
end
