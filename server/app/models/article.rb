class Article < ApplicationRecord
  belongs_to :source
  has_many :article_tags
  has_many :tags, through: :article_tag

  validates :title, presence: true, length:　{maximum: 255}
  validates :link, presence: true, length: {maximum: 255}
  validates :content, presence :true, length: {maximum: 1000}



end
