class Pokemon < ApplicationRecord
  belongs_to :trainer

  validates :name,
            :type_class,
            :max_hp,
            :current_hp , presence: true
end

