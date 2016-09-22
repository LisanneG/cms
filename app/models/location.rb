class Location < ApplicationRecord
	has_one :question
	validates :title, presence: true
	validates :text, presence: true
	validates :x, presence: true
	validates :y, presence: true
end
