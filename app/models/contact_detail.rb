class ContactDetail < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates :full_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true


end
