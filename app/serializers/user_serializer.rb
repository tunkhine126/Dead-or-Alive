class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :img_url, :zombie, :location_id, :id
end
