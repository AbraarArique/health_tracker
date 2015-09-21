class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.text :exercises
      t.integer :cal, null: false
      t.references :day, index: true

      t.timestamps null: false
    end
  end
end
