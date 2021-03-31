class GameroomSerializer < ActiveModel::Serializer
  attributes :id, :deckID, :discard, :users, :isGameStarted, :players, :messages
end
