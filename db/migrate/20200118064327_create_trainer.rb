class CreateTrainer < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :name, limit: 20, null: false
      t.integer :gender, null: false, default: 0
      t.date :birthday
      t.string :title, limit: 50, null: false
      t.integer :level, null: false
    end
  end
end
