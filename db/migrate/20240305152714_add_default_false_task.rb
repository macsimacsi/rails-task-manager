class AddDefaultFalseTask < ActiveRecord::Migration[7.1]
  def change
    new_column :Tasks, :completed, :boolean, default: false
  end
end
