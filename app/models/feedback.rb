class Feedback < ActiveRecord::Base

	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true
	validates :feedback, presence: true
	validates :devices, presence: true
	validates :orgId, presence: true
	validates :url, presence: true
	
end
