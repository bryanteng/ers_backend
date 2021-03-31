Rails.application.routes.draw do
    resources :gamerooms
    mount ActionCable.server => '/cable'


    get "/gameroom/:deckID", to: "gamerooms#getRoom"
    put "/gameroom/:deckID", to: "gamerooms#updateRoom"

end
