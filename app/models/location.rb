class Location < ApplicationRecord
	has_one :question
	validates :title, presence: true
	validates :text, presence: true
	validates :x, presence: true
	validates :y, presence: true
	#validates :question_id, presence: true
	#validates :image, presence: true	
	mount_uploader :image, LocationUploader
end
