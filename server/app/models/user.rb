class User < ApplicationRecord
  has_many :LikedArticles

  validates :user_name, presence: true, length: {maximum: 255}, uniqueness: true
  validates :password, presence: true, length: {maximum: 255}


end
