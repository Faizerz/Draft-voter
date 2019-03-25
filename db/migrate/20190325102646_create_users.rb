class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :user_type, default: "Free"
      t.integer :score, default: 0
      t.timestamps
    end
  end
end
