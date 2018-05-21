class User < ApplicationRecord
  has_one :address

  validates :nickname, presence: true, length: { minimum: 2, maximum: 500 }
  validates :email, presence: true, uniqueness: true, on: :create
  validates :password, length: { in: 6..20 }
end
