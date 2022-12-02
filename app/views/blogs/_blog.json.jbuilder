json.extract! blog, :id, :name, :author, :price, :paid, :created_at, :updated_at
json.url blog_url(blog, format: :json)
