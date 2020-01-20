class PokemonSerializer < ActiveModel::Serializer
  attributes  :id,
              :name,
              :type_class,
              :moves,
              :max_hp,
              :current_hp,
              :trainer
end
