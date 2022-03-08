require 'poke-api-v2'
class PokemonsController < ApplicationController
  def show
    @pokemon = Pokemon.find(params[:query])
  end
end
