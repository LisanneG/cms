class Question < ApplicationRecord
  belongs_to :location, optional: true
  validates :question, presence: true
end
