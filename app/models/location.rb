class Location < ApplicationRecord
	has_many :questions
	validates :title, presence: true
	validates :text, presence: true
	validates :x, presence: true
	validates :y, presence: true
end
