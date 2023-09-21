class Payment < ApplicationRecord
  belongs_to :card
  enum status: { unpaid: 0, paid: 1 }

end
