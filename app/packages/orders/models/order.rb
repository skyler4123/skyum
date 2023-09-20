class Order < ApplicationRecord
  belongs_to :customer

  enum status: {unpaid: 0, paid: 1}
end
