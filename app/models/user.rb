class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true, length: { maximum: 50 }
  validates :username, presence: true, length: { maximum: 15 }, uniqueness: true, format: { with: /\A@[a-z0-9]+\z/ }
  validates :email, presence: true, uniqueness: true, format: { with: /\A\S+@\S+\.\S+\z/}
  validates :password, presence: true, length: { minimum: 7 }, format: { with: /\A[a-z0-9]+\z/i }
end
