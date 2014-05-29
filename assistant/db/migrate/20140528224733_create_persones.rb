class CreatePersones < ActiveRecord::Migration
  def change
    create_table :persones do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
   add_index :persones, [:user_id, :created_at]
  end
end
