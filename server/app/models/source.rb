class Source < ApplicationRecord
  belongs_to :tag
  has_many :articles
end
