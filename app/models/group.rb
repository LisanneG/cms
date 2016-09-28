class Group < ApplicationRecord
  has_many :students, dependent: :destroy
  validates :group, presence: true
  validates :key, uniqueness: true
end
