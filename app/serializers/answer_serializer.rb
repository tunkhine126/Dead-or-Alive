class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :value, :question_type, :question_id
end
