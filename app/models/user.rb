class User < ActiveRecord::Base
	has_many :complaints
	has_many :likes
end
