class User < ApplicationRecord
  enum role: [:end_user, :admin]

  has_secure_password

  has_many :connections
end
