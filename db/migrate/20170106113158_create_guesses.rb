class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :first_time_count, index: true, null: false
      t.integer :total_guesses, null: false
      t.belongs_to :card, index: true, null: false
      t.belongs_to :user, index: true, null: false

      t.timestamps(null: false)
    end
  end
end
