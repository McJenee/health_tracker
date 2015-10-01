class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id
      t.integer :burn
      t.date :date
      t.integer :time_spent

      t.timestamps null: false
    end
  end
end
