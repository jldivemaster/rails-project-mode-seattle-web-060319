class CreateUserTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :user_trips do |t|
      t.integer :user_id
      t.integer :project_id
      t.text :review
      t.integer :rating
    end
  end
end
