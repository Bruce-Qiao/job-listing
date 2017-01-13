class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :job

  mount_uploader :attachment, AttachmentUploader
  validates :user_id, presence: true
  validates :attachment, presence: true
end
