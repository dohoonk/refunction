class Member < ApplicationRecord
  mount_uploader :image, ImageUploader
  
end
