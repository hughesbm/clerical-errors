class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string  :name
      t.integer :race_id
      t.integer :background_id
      t.integer :xp, default: 0, null: false
      t.string  :alignment
      t.string  :player_name
      t.integer :age
      t.string  :height
      t.string  :weight
      t.string  :eyes
      t.string  :skin
      t.string  :hair
      t.string  :gender
      t.string  :picture
      t.text    :description
      t.integer :user_id
      t.timestamps
    end

    add_index :characters, :user_id
  end
end
