class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.float :price
      t.date :start_date
      t.integer :location_id
      t.integer :category_id
      t.integer :organization_id
      t.integer :available_spots
      t.string :img_url
    end
  end
end
