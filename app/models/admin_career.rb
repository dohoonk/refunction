class AdminCareer < ApplicationRecord
  mount_uploader :career, ImageUploader
  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :career, presence: true

end
