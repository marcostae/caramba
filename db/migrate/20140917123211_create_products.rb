class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :min_lvl
      t.integer :price
      t.string :image_url
      t.integer :product_category_id

      t.timestamps
    end
  end
end
