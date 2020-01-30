require 'rails_helper'

RSpec.describe Pokemon, type: :request do
  describe "#index" do
    let!(:pokemon_list) { create_list(:pokemon, 5) }

    it 'return pokemon list' do
      get '/pokemons'
      payload = JSON.parse(response.body)
      expect(payload['pokemons'].size).to eq(5)
    end
  end

  describe '#show' do
    let!(:pokemon) { create(:pokemon, id: 1) }

    it 'return found pokemon' do
      get '/pokemons/1'
      payload = JSON.parse(response.body)
      expect(payload['pokemon']['id']).to eq(pokemon.id)
    end
  end
end
