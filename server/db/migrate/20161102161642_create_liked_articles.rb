class CreateLikedArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_articles do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
