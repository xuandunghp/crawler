class Articletag < ApplicationRecord
  belongs_to :article
  belongs_to :tags
end
