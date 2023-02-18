class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { minimum: 4 }, 
    uniqueness: { case_sensitive: true }
  validates :password, presence: true, length: { in: 4..20}
end
