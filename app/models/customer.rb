class Customer < ActiveRecord::Base
  has_many :items
  has_secure_password

  validates :name, :email, :password_digest, presence: true
end
