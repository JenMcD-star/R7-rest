class Member < ApplicationRecord
  belongs_to :user
  has_many :facts
end
