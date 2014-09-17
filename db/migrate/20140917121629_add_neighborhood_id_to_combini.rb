class AddNeighborhoodIdToCombini < ActiveRecord::Migration
  def change
    add_column :combinis, :neighborhood_id, :integer
  end
end
