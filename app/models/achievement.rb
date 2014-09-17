class Achievement < ActiveRecord::Base
	has_many :achievement_user
	has_many :users, through: :achievement_user
end
