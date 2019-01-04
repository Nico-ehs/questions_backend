class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id
  has_many :answers
end
