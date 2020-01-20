require 'rails_helper'

RSpec.describe Trainer, type: :model do
  describe 'validates' do
    it 'relations' do
      should have_many(:pokemons)
    end

    it 'present of required fields' do
      should validate_presence_of(:name)
      should validate_presence_of(:level)
      should validate_presence_of(:title)
    end
  end

  describe 'create trainer' do
    let(:trainer) { build(:trainer)}
    it 'return one trainer' do
      trainer.save
      expect(Trainer.all.size).to  eq(1)
    end
  end
end
