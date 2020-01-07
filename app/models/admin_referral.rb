class AdminReferral < ApplicationRecord
  # validates :client_name, presence: true
  # validates :name, presence: true
  # validates :company, presence: true
  # validates :phone, presence: true
  # validates :email, presence: true
  # validates :client_phone, presence: true
  # validates :advertisement, presence: true

  generate_public_uid

  def self.find_param(param)
    find_by! public_uid: param.split('-').first
  end

  after_create :add_categorizer_to_confirmation_code

  private

  def add_categorizer_to_confirmation_code

      loop do
        public_uid = self.public_uid
        public_uid = public_uid.prepend('M') if self.referral_form_type == 'medlegal'
        public_uid = public_uid.prepend('E') if self.referral_form_type == 'employer'
        break unless AdminReferral.exists?(public_uid: public_uid)
      end
      self.update_column(:public_uid, public_uid)
  end
end
