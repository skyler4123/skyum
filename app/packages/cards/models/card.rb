class Card < ApplicationRecord
  belongs_to :branch
  belongs_to :user
  enum status: { unpaid: 0, paid: 1 }
end
