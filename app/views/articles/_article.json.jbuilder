json.extract! article, :id, :titile, :author, :text, :created_at, :updated_at
json.url article_url(article, format: :json)
