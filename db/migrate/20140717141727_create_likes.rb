class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :complaint_id
      t.boolean :like

      t.timestamps
    end
  end
end
