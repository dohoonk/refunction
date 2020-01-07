class AdminReferral < ApplicationRecord
  # validates :client_name, presence: true
  # validates :name, presence: true
  # validates :company, presence: true
  # validates :phone, presence: true
  # validates :email, presence: true
  # validates :client_phone, presence: true
  # validates :advertisement, presence: true

  generate_public_uid.prepend('M')
end
