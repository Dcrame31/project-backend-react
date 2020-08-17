class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :comment
      t.integer :campground_id
      t.timestamps
    end
  end
end
