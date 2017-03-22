class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :race, default: 0, null: false
      t.integer :class, default: 0, null: false
      t.integer :level, default: 1, null: false
      t.timestamps
    end
  end
end
