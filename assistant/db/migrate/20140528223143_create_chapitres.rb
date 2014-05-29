class CreateChapitres < ActiveRecord::Migration
  def change
    create_table :chapitres do |t|
      t.integer :number
      t.string :title
      t.integer :scene_id
      t.integer :anecdote_id
      t.integer :user_id

      t.timestamps
    end
  end
end
