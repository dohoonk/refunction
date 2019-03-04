class Service < ApplicationRecord
  mount_uploader :picture, ServiceImageUploader

  validates :title, presence: true
  validates :picture, presence: true
  validates :content, presence: true
  validates :description, presence: true
end
