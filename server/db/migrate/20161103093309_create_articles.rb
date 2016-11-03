class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link
      t.text :content
      t.datetime :posted_at
      t.string :author

      t.timestamps
    end
  end
end
