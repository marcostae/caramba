class Typegroup < ActiveRecord::Base
	has_many :types
	has_many :complaints
end
