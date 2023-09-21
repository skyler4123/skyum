class Payment < ApplicationRecord
  belongs_to :gift_card
  belongs_to :order
  belongs_to :payment_partner
end
