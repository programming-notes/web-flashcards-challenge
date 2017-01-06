class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :deck, index: true, null: false
      t.string :questions, null: false
      t.string :answers, null: false

      t.timestamps(null: false)
    end
  end
end
