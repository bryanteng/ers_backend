class CreateGamerooms < ActiveRecord::Migration[5.2]
  def change
    create_table :gamerooms do |t|
      t.json :discard, default: [], array: true
      t.json :users, default: [], array: true
      t.string :deck
      t.timestamps
    end
  end
end
