class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.integer :class_level, default: 1, null: false
      t.integer :base_class, default: 0, null: false
      t.integer :sub_class, default: 0, null: false
      t.integer :character_id
      t.timestamps
    end

    add_index :levels, :character_id
  end
end
