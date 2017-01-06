class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do
      t.integer :first_time_count, index: true, null: false
      t.integer :total_guess, null: false
      t.belongs_to :cards, index: true, null: false
      t.belongs_to :users, index: true, null: false

      t.timestamps(null: false)
    end
  end
end
