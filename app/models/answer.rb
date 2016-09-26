class Answer < ApplicationRecord
  belongs_to :question
  mount_uploader :picture, PictureUploader
end
