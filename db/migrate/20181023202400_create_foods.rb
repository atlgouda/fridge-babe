class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :pounds
      t.boolean :vegan
      t.string :timestamp
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
