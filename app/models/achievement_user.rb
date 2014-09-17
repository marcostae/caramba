class AchievementUser < ActiveRecord::Base
	has_many :users
	has_many :achievements
end
