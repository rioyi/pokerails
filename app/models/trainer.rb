class Trainer < ApplicationRecord
  enum gender: [:female, :male]

  validates :name, :title, :level,
            presence: true
end
