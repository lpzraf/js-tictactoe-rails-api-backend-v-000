class GamesController < ApplicationController

  def index
   @games = Game.all
   render json: @games
  end

  def create
   @game = Game.create(game_params)
   render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    Game.find(params[:id]).update(game_params)
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end
end
