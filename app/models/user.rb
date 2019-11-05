class User < ApplicationRecord
  has_many :orders
  has_one :payment_info
end
