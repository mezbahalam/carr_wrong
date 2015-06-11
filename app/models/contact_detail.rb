class ContactDetail < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
