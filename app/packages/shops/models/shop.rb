class Shop < ApplicationRecord
  belongs_to :shop_owner
  has_many :orders
  has_many :products
end
