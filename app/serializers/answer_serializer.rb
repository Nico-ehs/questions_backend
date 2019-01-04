class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :question_id

end
