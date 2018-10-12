class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :roles

  has_one :profile

  class ProfileSerializer < ActiveModel::Serializer
    attributes :cpf, :birth, :name
  end
end
