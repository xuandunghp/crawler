class Article < ApplicationRecord
  has_and_belongs_to_many :tags
  belongs_to :source

end
