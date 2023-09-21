class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :shop
  has_one :payment
  has_many :order_products
  has_many :products, through: :order_products
  enum status: {unpaid: 0, paid: 1}
end
