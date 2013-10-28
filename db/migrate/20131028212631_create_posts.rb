class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
