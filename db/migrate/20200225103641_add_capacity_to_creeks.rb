class AddCapacityToCreeks < ActiveRecord::Migration[6.0]
  def change
    add_column :creeks, :capacity, :string
  end
end
