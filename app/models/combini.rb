class Combini < ActiveRecord::Base
	belongs_to :user
	belongs_to :type
	belongs_to :typegroup
	belongs_to :neighborhood
	has_many :likes
end
