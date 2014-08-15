class Complaint < ActiveRecord::Base
	belongs_to :user
	belongs_to :type
	belongs_to :typegroup
	has_many :likes
end
