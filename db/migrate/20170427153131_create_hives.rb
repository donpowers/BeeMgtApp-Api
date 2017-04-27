class CreateHives < ActiveRecord::Migration[5.0]
  def change
    create_table :hives do |t|
      t.string :hive_name
      t.string :queen_type
      t.integer :brood_supers
      t.integer :honey_supers
      t.string :hive_location

      t.timestamps
    end
  end
end
