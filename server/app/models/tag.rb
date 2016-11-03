class Tag < ApplicationRecord
  has_many :sources
  has_many :articletag
  has_many : articles, :through :articletag

  validates :name, presence :true
  validates_length_of :name, maximum: 255

end
