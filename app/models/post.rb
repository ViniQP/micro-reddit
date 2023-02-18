class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true
  validates :description, presence: true
end
