class Client < ActiveRecord::Base

	has_many :visits
	has_many :exchanges, through: :visits

	validates_presence_of :code
	validates_presence_of :birth_date
	validates_presence_of :register_date
	validates_presence_of :register_location_name
	validates_presence_of :gender
	validates_format_of :gender, with: /^[MFT]$/, message: "Please select valid gender option"
	validates_presence_of :veterancy
	validates_presence_of :new 
	validates_presence_of :neighborhood
	validates_presence_of :hiv_screen
	validates_presence_of :hiv_pos
	validates_presence_of :hep_b_screen
	validates_presence_of :hep_b_pos
	validates_presence_of :hep_c_screen
	validates_presence_of :hep_c_pos

	scope :new, where('new = ?', true)
	
end
