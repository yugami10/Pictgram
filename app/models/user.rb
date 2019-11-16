class User < ApplicationRecord
  validates :name, presence: true ,length:{in: 1..15}
  validates :email, presence: true ,format:{with:/[^\s]@[^\s]/}
  validates :password, length: { in: 8..32}, format:{with:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
  
  has_secure_password
  
  has_many :topics
end