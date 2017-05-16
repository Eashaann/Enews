json.extract! article, :id, :name, :description, :image_url, :created_at, :updated_at
json.url article_url(article, format: :json)
