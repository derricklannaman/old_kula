class AddPriceColumnToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :price, :decimal
  end
end
