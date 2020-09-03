class Basic < ApplicationRecord
  belongs_to :user, optional: true

  enum blood_type: [:" ", :A, :B, :O, :AB]
  enum gender: [:無回答, :男性, :女性, :その他]
end
