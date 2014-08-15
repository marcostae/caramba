class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.integer :user_id
      t.integer :typegroup_id
      t.integer :type_id
      t.string :photo
      t.string :comment

      t.timestamps
    end
  end
end
