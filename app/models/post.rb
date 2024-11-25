class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :comments

  validates :title, :content, presence: true
  validates_associated :user
end
