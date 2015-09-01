class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
