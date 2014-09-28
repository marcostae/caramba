class ChangeComplaintsToCombinis < ActiveRecord::Migration
  def change
  	rename_table :complaints, :combinis
  end
end
