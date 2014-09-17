class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :xp, :integer
    add_column :users, :gold, :integer
    add_column :users, :lvl, :integer
  end
end
