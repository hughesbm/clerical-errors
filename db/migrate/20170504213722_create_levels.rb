class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.integer :base_class_id
      t.integer :sub_class_id
      t.integer :character_id
      t.timestamps
    end

    add_index :levels, :character_id
  end
end
