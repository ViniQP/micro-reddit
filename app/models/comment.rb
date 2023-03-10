class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :user_id, presence: true
  validates :comment, presence: true
end
