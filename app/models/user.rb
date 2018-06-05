class User < ApplicationRecord
  validates :username, :email, uniqueness: true
  validates :username, length: {maximum: 20}

end
