class CreateUserCustomizeSources < ActiveRecord::Migration[5.0]
  def change
    create_table :user_customize_sources do |t|
      t.integer :user_id
      t.integer :source_id

      t.timestamps
    end
  end
end
