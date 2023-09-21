json.extract! product, :id, :name, :unit_price, :branch_id, :status, :created_at, :updated_at
json.url product_url(product, format: :json)
