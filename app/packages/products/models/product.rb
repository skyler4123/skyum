class Product < ApplicationRecord
  belongs_to :branch
  belongs_to :shop
  belongs_to :category
  has_many :order_products
  has_many :orders, through: :order_products
  enum status: {unactive: 0, active: 1}
end
