class User < ApplicationRecord
  has_many :LikedArticles
  has_many :User_customize_sources
  has_many :User_customize_tags

  validates :user_name, presence: true
  validates_length_of :user_name, maximum: 255, minimum: 4
  validates :password, presence: true
  validates_length_of :password, maximum: 255, minimum: 6
end
