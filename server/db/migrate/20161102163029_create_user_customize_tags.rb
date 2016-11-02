class CreateUserCustomizeTags < ActiveRecord::Migration[5.0]
  def change
    create_table :user_customize_tags do |t|
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
