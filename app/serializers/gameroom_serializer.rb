class GameroomSerializer < ActiveModel::Serializer
  attributes :id, :deckID, :currentPlayer, :discardPile, :users, :isGameStarted, :players, :messages
end
