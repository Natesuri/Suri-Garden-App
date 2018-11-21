class CreatePlots < ActiveRecord::Migration[5.2]
  def change
    create_table :plots do |t|
      t.string :name
      t.integer :size
      t.string :brightness
      t.string :climate
      t.text :notes

      t.timestamps
    end
  end
end
