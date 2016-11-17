class ArticleTag < ApplicationRecord
  belongs_to :article  # FK :　article_id
  belongs_to :tag      # FK : tag_id
end
