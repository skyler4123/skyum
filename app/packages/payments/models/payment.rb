class Payment < ApplicationRecord
  belongs_to :gift_card
  belongs_to :order
  belongs_to :payment_partner

  enum status: {unpaid: 0, paid: 1}
end
