class Changetypecategoryidname < ActiveRecord::Migration
  def change
  	rename_column :types, :typecategory_id, :typegroup_id
  end
end
