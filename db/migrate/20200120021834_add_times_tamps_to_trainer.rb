class AddTimesTampsToTrainer < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :trainers, null: true

    long_ago = DateTime.new(2000, 1, 1)
    Trainer.update_all(created_at: long_ago, updated_at: long_ago)

    change_column_null :trainers, :created_at, false
    change_column_null :trainers, :updated_at, false
  end
end
