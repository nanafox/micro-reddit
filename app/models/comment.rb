class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_associated :user, :post
  validates :body, presence: true
end
