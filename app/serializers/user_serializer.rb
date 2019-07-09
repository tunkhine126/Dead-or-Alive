class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :img_url, :zombie, :location_id, :quiz_id, :id
end
