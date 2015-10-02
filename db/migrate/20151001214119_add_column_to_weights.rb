class AddColumnToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :weight, :integer
    add_column :weights, :date, :date
  end
end
