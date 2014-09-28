class ChangeComplaintsToCombinis < ActiveRecord::Migration
  def change
  	rename_table :combinis, :complaints
  end
end
