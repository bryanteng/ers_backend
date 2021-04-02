class GameroomSerializer < ActiveModel::Serializer
  attributes :id, :deckID, :currentPlayer, :discard, :users, :isGameStarted, :players, :messages
end
