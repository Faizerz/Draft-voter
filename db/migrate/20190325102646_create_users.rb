class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :usertype_id
      t.string :username
      t.string :name
      t.string :email
      t.string :password
      t.integer :score
      t.timestamps
    end
  end
end
