class PlacementSerializer < ActiveModel::Serializer
  has_one :order
  has_one :product

  attributes :quantity, :product

  def product
    ActiveModel::SerializableResource.new(object.product, serializer: ProductSerializer)
  end
end
