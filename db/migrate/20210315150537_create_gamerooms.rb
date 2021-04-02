class CreateGamerooms < ActiveRecord::Migration[5.2]
  def change
    create_table :gamerooms do |t|
      t.json :discard, default: [], array: true
      t.json :users, default: [], array: true
      t.string :deckID
      t.integer :currentPlayer, default: 0
      t.boolean :isGameStarted, :default => false
      t.json :players
      t.json :messages, default: [], array: true
      t.timestamps
    end
  end
end
