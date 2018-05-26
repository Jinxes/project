class User < ApplicationRecord

  has_secure_password

  validates :username, presence: true, length: { minimum: 2, maximum: 500 }, on: :update
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }, on: :create
  validates :gender, presence: true, on: :update
  validates :school, length: { minimum: 1, maximum: 100 }, on: :save
  validates :phone, length: { minimum: 6, maximum: 20 }, on: :save
  validates :company, length: { minimum: 1, maximum: 100 }, on: :save
  validates :sign, length: { minimum: 1, maximum: 255 }, on: :save
  validates :intro, length: { minimum: 1, maximum: 1024 }, on: :save

  has_one :address

  def token
    {token: Token.encode(
      id: self.id,
      username: self.username,
      email: self.email,
    )}
  end

  def to_json
    self.slice(:username, :email)
  end

end
