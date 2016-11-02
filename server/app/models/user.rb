class User < ApplicationRecord
  has_many :LikedArticles
  has_many :User_customize_sources
  has_many :User_customize_tags
end
