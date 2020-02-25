class AddPriceToCreeks < ActiveRecord::Migration[6.0]
  def change
    add_column :creeks, :price, :integer
  end
end
