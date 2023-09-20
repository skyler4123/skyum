class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :shop
  enum status: {unpaid: 0, paid: 1}
end
