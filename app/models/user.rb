class User < ApplicationRecord
  enum role: [:end_user, :admin]

  has_many :connections
end
