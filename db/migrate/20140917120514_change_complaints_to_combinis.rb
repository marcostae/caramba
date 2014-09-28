class ChangeComplaintsToCombinis < ActiveRecord::Migration
  def change
  	rename_table :combinis, :combinis
  end
end
