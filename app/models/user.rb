class User < ApplicationRecord

  has_secure_password

  validates :username, presence: true, length: { minimum: 2, maximum: 500 }
  validates :email, presence: true, uniqueness: true, on: :create
  validates :password, length: { in: 6..20 }

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
