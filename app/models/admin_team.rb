class AdminTeam < ApplicationRecord
  belongs_to :job_category
  mount_uploader :image, ImageUploader
end
