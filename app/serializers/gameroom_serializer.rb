class GameroomSerializer < ActiveModel::Serializer
  attributes :id, :discard, :users, :deck
end
