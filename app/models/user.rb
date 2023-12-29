class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, email: true
  validates :password, password_strength: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :members, foreign_key: :user_id
end