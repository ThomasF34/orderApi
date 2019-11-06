class Order < ApplicationRecord
  belongs_to :user
  has_many :placements, dependent: :destroy
  has_many :products, through: :placements

  attribute :total

  def total
    placements.sum{ |place| place.product.price.*(place.quantity) }
  end
end
