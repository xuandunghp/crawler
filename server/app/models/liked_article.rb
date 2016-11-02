class LikedArticle < ApplicationRecord
  belongs_to :user

  validates :article_id, presence: true

end
