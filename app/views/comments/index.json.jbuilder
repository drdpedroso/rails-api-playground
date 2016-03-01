json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :body, :post
  json.url comment_url(comment, format: :json)
end
