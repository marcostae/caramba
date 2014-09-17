class RenameType < ActiveRecord::Migration
  def change
  	rename_column :types, :icon, :icon_url
  end
end
