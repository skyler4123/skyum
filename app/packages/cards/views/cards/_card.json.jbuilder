json.extract! card, :id, :qr_code, :branch_id, :status, :amount, :used_at, :expire_at, :created_at, :updated_at
json.url card_url(card, format: :json)
