class GameroomsController < ApplicationController

  def index
    @gamerooms = Gameroom.all
    render json: @gamerooms
  end

  def show
    @gameroom = Gameroom.find(params[:id])
    render json: @gameroom
  end

  def getRoom
    @gameroom = Gameroom.find_by(deckID: params[:deckID])
    render json: @gameroom
  end

  def updateRoom
    @gameroom = Gameroom.find_by(deckID: params[:deckID])

    if @gameroom.update(gameroom_params)
      render json: @gameroom, status: :accepted
    else
      render json: {errors: @gameroom.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def create
    @gameroom = Gameroom.new(gameroom_params)

    if @gameroom.save
      render json: @gameroom, status: :accepted
    else
      render json: {errors: @gameroom.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @gameroom = Gameroom.find(params[:id])

    if @gameroom.update(gameroom_params)
      render json: @gameroom, status: :accepted
    else
      render json: {errors: @gameroom.errors.full_messages}, status: :unprocessable_entity
    end

  end

  # come back to make logic changes
  def destroy
    @gameroom = Gameroom.find(params[:id])
    if @gameroom.destroy
      render json: @gameroom, status: :accepted
    else
      render json: {errors: @gameroom.errors.full_messages}, status: :unprocessable_entity
    end
  end


  private
  def gameroom_params
    params.require(:gameroom).permit!
  end
end
