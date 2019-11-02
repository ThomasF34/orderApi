class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  def name
    {
      firstName: object.fname,
      lastName: object.lname
    }
  end

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
