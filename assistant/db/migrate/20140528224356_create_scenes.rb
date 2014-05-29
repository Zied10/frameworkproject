class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :text
      t.integer :personne_id
      t.string :lieu
      t.string :instant
      t.integer :user_id

      t.timestamps
    end
  end
end
