class RemoveV2AttrFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :size, :string
    remove_column :plants, :water_frequency, :integer
    remove_column :plants, :harvest_frequency, :integer
    remove_column :plants, :ideal_climate, :string
    remove_column :plants, :impossible_climate, :string
    remove_column :plants, :impossible_brightness, :string
  end
end
