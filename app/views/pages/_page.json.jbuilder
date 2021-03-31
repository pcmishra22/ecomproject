json.extract! page, :id, :title, :description, :permalink, :created_at, :updated_at
json.url page_url(page, format: :json)
