class RemovePhotoFromCombini < ActiveRecord::Migration
  def change
  	remove_column :combinis, :photo
  end
end
