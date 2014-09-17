class Product < ActiveRecord::Base
	belongs_to :product_category
	has_many :inventory_items
	has_many :users, through: :inventory_items
end
