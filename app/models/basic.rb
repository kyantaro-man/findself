class Basic < ApplicationRecord
  belongs_to :user, optional: true
end
