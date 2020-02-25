class CreateCreeks < ActiveRecord::Migration[6.0]
  def change
    create_table :creeks do |t|
      t.integer :rating
      t.string :title
      t.string :country
      t.string :city
      t.boolean :available, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
