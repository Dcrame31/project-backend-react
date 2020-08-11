class AddColumnToCampgrounds < ActiveRecord::Migration[6.0]
  def change
    add_column :campgrounds, :cost, :integer
  end
end
