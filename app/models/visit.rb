class Visit < ActiveRecord::Base
	belongs_to :client
	has_one :exchange
	belongs_to :location
end
