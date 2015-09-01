class AddDestinationIdToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :destination_id, :integer
    add_index :dishes, :destination_id
  end
end
