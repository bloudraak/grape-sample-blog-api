class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :weblog

      t.timestamps
    end
    add_index :posts, :weblog_id
  end
end
