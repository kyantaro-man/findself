class Profile < ApplicationRecord
  validates :catch_copy, length: { maximum: 100 }
  validates :introduction, length: { maximum: 3000 }
  validates :goal, length: { maximum: 300 }
  validates :career, length: { maximum: 2000 }
  belongs_to :user

  mount_uploader :cover_image, ImageUploader
  mount_uploader :profile_image, ImageUploader
end
