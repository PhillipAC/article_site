json.array!(@featured_articles) do |featured_article|
  json.extract! featured_article, :id, :image, :article_id
  json.url featured_article_url(featured_article, format: :json)
end
