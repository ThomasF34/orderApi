class OrderSerializer < ActiveModel::Serializer
  attributes :total
  has_many :placements, serializer: PlacementSerializer
end
