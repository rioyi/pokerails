require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  describe 'validates' do
    it 'associations' do
      should belong_to(:trainer)
    end

    it 'prenset of required fields' do
      should validate_presence_of(:name)
      should validate_presence_of(:type_class)
      should validate_presence_of(:max_hp)
      should validate_presence_of(:current_hp)
    end
  end
end
