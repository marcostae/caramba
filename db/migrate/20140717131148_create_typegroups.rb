class CreateTypegroups < ActiveRecord::Migration
  def change
    create_table :typegroups do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
