class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :name
      t.string :password_digest
      t.string :nausea
      t.string :integer
      t.integer :happiness
      t.integer :tickets
      t.integer :height

      t.timestamps
    end
  end
end
