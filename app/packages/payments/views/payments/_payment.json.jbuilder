json.extract! payment, :id, :card_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
