class Trainer < ApplicationRecord
  enum gender: [:female, :male]
  has_many :pokemons, class_name: "Pokemon",
                      foreign_key: "trainer_id", dependent: :destroy

  validates :name, :title, :level,
            presence: true
end
