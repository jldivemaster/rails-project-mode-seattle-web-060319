class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :img_url
    end
  end
end
