class Source < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :name, presence: true, length: {maximum: 255}
  validates :source_link, presence: true, length: {maximum: 255}
end
