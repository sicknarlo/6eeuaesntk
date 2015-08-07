class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.datetime :purchase_date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
