class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :cpf, :birth, :name

  belongs_to :user
end
