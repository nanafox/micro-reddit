class User < ApplicationRecord
  has_many :posts
  has_many :comments # , through: :posts

  validates :email, :password, :username, presence: true
  validates :email, :username, uniqueness: true

  validates :email, format: {
                      with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]{2,}\z/i,
                      message: "'%{value}' is not a valid email"
                    }
  validates :username, length: { minimum: 3, maximum: 12 }
  validates :password, length: { minimum: 6, maximum: 12 }
end
