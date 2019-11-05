# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

thomas = User.create(fname: 'Thomas', lname: 'Falcone', email: 'mySuperEmail', street: 'Here', postalcode: '00000', city: 'Obvious')
fatima = User.create(fname: 'Fatima', lname: 'Machhouri', email: 'secondEmail')

fatima.payment_info = PaymentInfo.create(number: "0000000000000000", expire_date: "11/22", cvv: "123")

5.times do |i|
  Product.create(name: "Product ##{i}", price: i + 20, description: "A product.")
end

newOrder = thomas.orders.create()

newOrder.placements.create(product_id: 1, quantity: 3)
