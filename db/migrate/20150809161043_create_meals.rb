class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name, null: false
      t.text :foods
      t.integer :cal, null: false
      t.references :day, index: true

      t.timestamps null: false
    end
  end
end
