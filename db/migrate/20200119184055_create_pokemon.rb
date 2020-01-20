class CreatePokemon < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name, limit: 20, null: false
      t.string :type_class, limit: 20, null: false
      t.string :moves, array: true, default: []
      t.integer :max_hp, null: false
      t.integer :current_hp, null: false
      t.belongs_to :trainer, foreign_key: true

      t.timestamps
    end
  end
end
