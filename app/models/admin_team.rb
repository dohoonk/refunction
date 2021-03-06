class AdminTeam < ApplicationRecord
  belongs_to :job_category
  mount_uploader :image, ImageUploader
  mount_uploader :resume, ResumeUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :image, presence: true

  def memorial?
    state = false
    memorial_category_id = JobCategory.find_by(title: 'Memorial').id
    state = true if self.job_category_id == memorial_category_id
    state
  end
end
