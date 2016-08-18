class CreateFeaturedArticles < ActiveRecord::Migration
  def change
    create_table :featured_articles do |t|
      t.string :image
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
