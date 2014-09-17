class AddMottoToUser < ActiveRecord::Migration
  def change
    add_column :users, :motto, :string
  end
end
