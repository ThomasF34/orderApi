class Placement < ApplicationRecord
  belongs_to :order
  belongs_to :product
  def ==(other)
    other.quantity == self.quantity && other.product == self.product
  end
end
