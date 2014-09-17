class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :activated

      t.timestamps
    end
  end
end
