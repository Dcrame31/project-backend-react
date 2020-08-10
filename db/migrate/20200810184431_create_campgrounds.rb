class CreateCampgrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.integer :location_id
      t.string :description
      t.string :link
      t.timestamps
    end
  end
end
