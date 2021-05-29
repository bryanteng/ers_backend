class CreateGamerooms < ActiveRecord::Migration[5.2]
  def change
    create_table :gamerooms do |t|
      t.json :discardPile, default: [], array: true
      t.json :users, default: [], array: true
      t.string :deckID
      t.integer :currentPlayer, default: 0
      t.boolean :isGameStarted, :default => false
      t.json :players
      t.json :messages, default: [], array: true
      t.boolean :aceOrFace, :default => false
      t.string :slappable
      t.string :roundWinner
      t.string :gameWinner
      t.json :penaltyPile, default: [], array: true
      t.timestamps
    end
  end
end
