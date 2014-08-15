class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :typecategory_id
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
