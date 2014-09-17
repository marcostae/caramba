class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :description
      t.string :attribute
      t.integer :threshold

      t.timestamps
    end
  end
end
