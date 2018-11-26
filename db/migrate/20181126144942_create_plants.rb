class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :type
      t.string :size
      t.text :care_instructions
      t.integer :water_frequency
      t.integer :harvest_frequency
      t.string :ideal_climate
      t.string :ideal_brightness
      t.string :impossible_climate
      t.string :impossible_brightness

      t.timestamps
    end
  end
end
