class AddressUserSerializer < ActiveModel::Serializer
  attributes :address

  def address
    if !object.street || !object.city || !object.postalcode
      nil
    else
      {
      street: object.street,
      city: object.city,
      postalCode: object.postalcode
    }
    end
  end
end
