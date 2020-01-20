Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'health', action: :health, controller: 'health'

  #trainer
  get 'trainers', action: :index, controller: 'trainers'
  # Pokemon
  get 'pokemons', to: 'pokemons#index'
end
