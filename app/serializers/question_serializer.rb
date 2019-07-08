class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :value, :quiz_id
end
