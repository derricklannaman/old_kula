class AddImageColumnToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :image, :string
  end
end
