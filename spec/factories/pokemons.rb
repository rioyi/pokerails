
FactoryBot.define do
  factory :pokemon do
    name { Faker::Games::Pokemon.name }
    type_class { 'ice' }
    moves { [Faker::Games::Pokemon.move, Faker::Games::Pokemon.move]}
    max_hp { 100 }
    current_hp { 50 }
    trainer
  end
end
