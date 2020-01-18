require 'rails_helper'

RSpec.describe 'TrainerController', type: :request do
  describe '#index' do
    let!(:trainer_list) { create_list(:trainer, 5) }
    it 'return trainer list' do
      get '/trainers'
      # payload = JSON.parse(response.body)
      byebug
    end
  end
end
