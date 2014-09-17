class User < ActiveRecord::Base
	has_many :combinis
	has_many :likes
	has_many :comments
	has_many :products, through: :inventory_items
	has_many :inventory_items
	belongs_to :title
	has_many :achievements, through: :achievement_users
	has_many :achievement_users
end
