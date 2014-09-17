class AddTitleIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :title_id, :string
    remove_column :users, :title
  end
end
