class Branch < ApplicationRecord
  enum status: { unactive: 0, active: 1 }
end
