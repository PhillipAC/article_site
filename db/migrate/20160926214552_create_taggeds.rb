class CreateTaggeds < ActiveRecord::Migration
  def change
    create_table :taggeds do |t|
      t.integer :tag_id
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
