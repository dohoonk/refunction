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

  after_save :add_categorizer_to_confirmation_code

  private

  def add_categorizer_to_confirmation_code

    public_uid = self.public_uid
    public_uid = public_uid.prepend('M') if self.referral_form_type == 'medlegal'
    public_uid = public_uid.prepend('E') if self.referral_form_type == 'employer'


    if is_it_unique?(public_uid)
      self.update_column(:public_uid, public_uid)
    else
      add_categorizer_to_confirmation_code
    end

  end

  def is_it_unique?(public_uid)
    AdminReferral.find_by(public_uid: public_uid).nil?
  end

end
