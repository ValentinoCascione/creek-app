class AddDescriptionToCreeks < ActiveRecord::Migration[6.0]
  def change
    add_column :creeks, :description, :text
  end
end
