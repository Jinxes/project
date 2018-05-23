class User < ApplicationRecord

  has_secure_password

  validates :username, presence: true, length: { minimum: 2, maximum: 500 }, on: :update
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }, on: :create

  has_one :address

  def token
    {token: Token.encode(
      id: self.id,
      username: self.username,
      email: self.email,
      gender: self.gender,
    )}
  end

  def to_json
    self.slice(:username, :email)
  end

end
