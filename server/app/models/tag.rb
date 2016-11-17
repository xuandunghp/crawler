class Tag < ApplicationRecord
  has_many :article_tags
  has_many :articles, through: :article_tag
  belongs_to :user

  validates :name, presence: true, length: {maximum: 255}

end
