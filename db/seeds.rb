# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

thomas = User.create(fname: 'Thomas', lname: 'Falcone', email: 'mySuperEmail', street: 'Polytech, Place Eugène Bataillon', postalcode: '34090', city: 'Montpellier')
fatima = User.create(fname: 'Fatima', lname: 'Machhouri', email: 'secondEmail')

fatima.payment_info = PaymentInfo.create(number: "0000000000000000", expire_date: "11/22", cvv: "123")

Product.create(name: "Pizza 4 fromages", price: 8, description: "A product.")
Product.create(name: "Burger à l'agneau", price: 11, description: "A product.")
Product.create(name: "Bagel au saumon", price: 9, description: "A product.")
Product.create(name: "Lasagne", price: 11, description: "A product.")
Product.create(name: "Salade niçoise", price: 14, description: "A product.")

newOrder = thomas.orders.create()

newOrder.placements.create(product_id: 1, quantity: 3)
