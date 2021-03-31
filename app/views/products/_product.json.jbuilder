json.extract! product, :id, :name, :image, :price, :quantity, :category_id, :strength_id, :created_at, :updated_at
json.url product_url(product, format: :json)
