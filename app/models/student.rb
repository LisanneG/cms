class Student < ApplicationRecord
  belongs_to :group
  validates :name, presence: true
  validates :group_id, presence: true
end
