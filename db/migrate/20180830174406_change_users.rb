class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :nausea
    remove_column :users, :integer
    add_column :users, :nausea, :integer
  end
end
