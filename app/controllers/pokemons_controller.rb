class PokemonsController < ApplicationController
  require 'json'
  require 'open-uri'
  def index
    if params[:query].present? 
      api_url = "https://pokeapi.co/api/v2/pokemon/#{params[:query].downcase}"
      @pokemon = JSON.parse(URI.open(api_url).read)
    else
       redirect_to root_path
    end
  end
end
