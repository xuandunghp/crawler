class Article < ApplicationRecord
  SETTINGS = Settings.model.article

  belongs_to :source
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tag, dependent: :destroy

  validates :title, presence: true, length: {maximum: SETTINGS.title_max_length}
  validates :link, presence: true, length: {maximum: 255}
  validates :content, presence: true, length: {maximum: 1000}

  def self.test
    1
  end


end
