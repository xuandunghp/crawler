class CreateLikedArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_articles do |t|
      t.references :user, foreign_key: true
      t.integer :article_id

      t.timestamps
    end
  end
end
