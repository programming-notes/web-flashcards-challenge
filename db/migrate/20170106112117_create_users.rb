class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name, null:false
      t.string :email
      t.string :password
      t.string :username

      t.timestamps
    end

  end
end
