class Service < ApplicationRecord
  mount_uploader :picture, ServiceImageUploader
end
