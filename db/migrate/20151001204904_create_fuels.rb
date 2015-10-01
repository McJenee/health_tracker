class CreateFuels < ActiveRecord::Migration
  def change
    create_table :fuels do |t|
      t.integer :calorie
      t.date :date
      t.string :food
      t.string :meal_type

      t.timestamps null: false
    end
  end
end
