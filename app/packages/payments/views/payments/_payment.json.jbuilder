json.extract! payment, :id, :total_amount, :gift_card_id, :remain_amount, :order_id, :status, :is_cod_payment, :payment_partner_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
