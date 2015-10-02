class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step
      t.date :date

      t.timestamps null: false
    end
  end
end
