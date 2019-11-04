class FullProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description
end