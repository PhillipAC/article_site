json.array!(@tags) do |tag|
  json.extract! tag, :id, :string
  json.url tag_url(tag, format: :json)
end
