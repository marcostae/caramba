class Type < ActiveRecord::Base
	belongs_to :typegroup
	has_many :complaints
end
