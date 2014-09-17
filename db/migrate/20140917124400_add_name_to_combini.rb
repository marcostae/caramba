class AddNameToCombini < ActiveRecord::Migration
  def change
    add_column :combinis, :name, :string
  end
end
