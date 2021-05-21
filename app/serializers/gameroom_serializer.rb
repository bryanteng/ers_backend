class GameroomSerializer < ActiveModel::Serializer
  attributes :id, :deckID, :currentPlayer, :discardPile, :users, :isGameStarted, :players, :messages, :aceOrFace, :slappable, :roundWinner, :gameWinner
end
