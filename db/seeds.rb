# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gameroom = Gameroom.create(deckID:"05win676scin", users: ["me", "you", "him"], discard:[{code: "2S", image: "https://deckofcardsapi.com/static/img/2S.png", images: {png: "https://deckofcardsapi.com/static/img/2S.png",svg: "https://deckofcardsapi.com/static/img/2S.svg"}, value: "2", suit: "SPADES"}, {code: "3D", image: "https://deckofcardsapi.com/static/img/3D.png", images: {png: "https://deckofcardsapi.com/static/img/3D.png",svg: "https://deckofcardsapi.com/static/img/3D.svg"}, value: "3", suit: "DIAMONDS"}], players: {me:"", you:"", him:""}, messages:['me: hi', 'you: hi :)'] )
#
# t.json :discard, default: [], array: true
# t.json :users, default: [], array: true
# t.string :deckID
# t.boolean :isGameStarted, :default => false
# t.json :players
# t.json :messages, default: [], array: true

# gameroom = Gameroom.create(deck:"05win676scin", users: ["me", "you", "him", "they", "their", "them"], discard:[{code: "2S", image: "https://deckofcardsapi.com/static/img/2S.png", images: {png: "https://deckofcardsapi.com/static/img/2S.png",svg: "https://deckofcardsapi.com/static/img/2S.svg"}, value: "2", suit: "SPADES"}, {code: "3D", image: "https://deckofcardsapi.com/static/img/3D.png", images: {png: "https://deckofcardsapi.com/static/img/3D.png",svg: "https://deckofcardsapi.com/static/img/3D.svg"}, value: "3", suit: "DIAMONDS"}] )
