json.extract! gift_card, :id, :qr_code, :shop_id, :status, :amount, :used_at, :expire_at, :created_at, :updated_at
json.url gift_card_url(gift_card, format: :json)
