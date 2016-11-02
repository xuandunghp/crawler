class Source < ApplicationRecord
  belongs_to :tag
  has_many :articles

  validates :name, presence: true
  validates_length_of :name, maximum: 255
  validates :source_link, presence: true
  validates_length_of :source_link, maximum: 255
end
