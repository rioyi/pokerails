class PokemonsController < ApplicationController

  def index
    render json: Pokemon.all
  end

  def show
    render json: Pokemon.find(pokemon_param_id[:id])
  end

  private

  def pokemon_param_id
    params.permit(:id)
  end
end
