class AddSourceToArticles < ActiveRecord::Migration[5.0]
  def change
    # add_column :articles, :source, :references
    add_reference :articles, :source, index: true
    add_foreign_key :articles, :sources
  end
end
