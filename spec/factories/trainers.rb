FactoryBot.define do
  factory :trainer do
    name { Faker::Name.name }
    gender { 0 }
    birthday { Time.now }
    title { 'Super Trainer' }
    level { 99 }
  end
end
