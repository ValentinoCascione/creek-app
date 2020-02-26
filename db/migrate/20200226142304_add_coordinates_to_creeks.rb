class AddCoordinatesToCreeks < ActiveRecord::Migration[6.0]
  def change
    add_column :creeks, :latitude, :float
    add_column :creeks, :longitude, :float
  end
end
