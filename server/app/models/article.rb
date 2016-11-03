class Article < ApplicationRecord
  belongs_to :source
  has_many :articletag
  has_many :tags, through: :articletag

  validates :title, presence: true
  validates_length_of :title, maximum: 255
  validates :link, presence: true
  validates_length_of :link, maximum: 255
  validates :content, presence :true



end
