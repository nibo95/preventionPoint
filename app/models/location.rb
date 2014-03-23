class Location < ActiveRecord::Base
	has_many :visits
	has_many :exchanges, through: :visits
end
