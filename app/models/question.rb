class Question < ApplicationRecord
  belongs_to :location, optional: true
end
