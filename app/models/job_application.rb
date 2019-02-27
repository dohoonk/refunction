class JobApplication < ApplicationRecord
  mount_uploader :resume, ApplyUploader
end
