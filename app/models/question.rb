class Question < ApplicationRecord
	has_many :answers
  belongs_to :location, optional: true
  validates :question, presence: true
end
