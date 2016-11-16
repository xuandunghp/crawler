class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :LikedArticles

  # validates :user_name, presence: true, length: {maximum: 255}
  validates :password, presence: true, length: {maximum: 255}
end
