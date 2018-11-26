class AddUserToPlots < ActiveRecord::Migration[5.2]
  def change
    add_reference :plots, :user, foreign_key: true
  end
end
