class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :user_response, default: false
      t.integer :user_id
      t.integer :card_id

      t.timestamps(null: false)
    end
  end
end
