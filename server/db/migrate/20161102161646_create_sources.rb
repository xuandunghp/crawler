class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :source_link
      t.integer :user_id
      t.string :tags

      t.timestamps
    end
  end
end
