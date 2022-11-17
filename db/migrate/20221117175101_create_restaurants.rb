class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :price
      t.string :address
      t.string :category
      t.string :website

      t.timestamps
    end
  end
end
