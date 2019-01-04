class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :questions
  has_many :answers
end
