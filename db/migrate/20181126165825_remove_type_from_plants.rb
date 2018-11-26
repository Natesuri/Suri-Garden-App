class RemoveTypeFromPlants < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :type, :string
  end
end
