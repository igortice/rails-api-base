class Profile < ApplicationRecord
  belongs_to :user,
             optional:   true,
             inverse_of: :profile
end
