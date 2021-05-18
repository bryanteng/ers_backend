class GameroomsChannel < ApplicationCable::Channel
  def subscribed
    puts params, "subscribed data"
    # stream_from "some_channel"
    @gameroom = Gameroom.find_by(deckID: params[:room])
    stream_for @gameroom
    # stream_from 'gamerooms_channel'
  end

  def received(data)
    GameroomsChannel.broadcast_to(@gameroom, {gameroom: @gameroom})
    # ActionCable.server.broadcast "gameroom_#{params[:deckID]}", data
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # raise NotImplementedError
  end
end
