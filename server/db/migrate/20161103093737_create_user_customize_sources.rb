class CreateUserCustomizeSources < ActiveRecord::Migration[5.0]
  def change
    create_table :user_customize_sources do |t|
      t.references :user, foreign_key: true
      t.integer :source_id

      t.timestamps
    end
  end
end
