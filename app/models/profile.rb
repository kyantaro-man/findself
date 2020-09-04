class Profile < ApplicationRecord
  validates :introduction, length: { maximum: 3000 }
  validates :goal, length: { maximum: 300 }
  validates :career, length: { maximum: 2000 }
  belongs_to :user
end
