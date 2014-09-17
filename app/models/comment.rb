class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :combini
end
