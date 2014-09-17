class AddQualityRankToCombini < ActiveRecord::Migration
  def change
    add_column :combinis, :quality_rank, :integer
  end
end
