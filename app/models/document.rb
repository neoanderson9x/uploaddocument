class Document < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :reads
  has_many :favorites
  has_many :downloads

  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true, length: {maximum: Settings.content_size_max}
end
