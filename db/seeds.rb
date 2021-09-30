puts "Seeding baristas..."
barista1 = Barista.create(name: 'Andy')
barista2 = Barista.create(name: 'Michelle')
barista3 = Barista.create(name: 'Paul')
barista4 = Barista.create(name: 'Ronnie')

puts "Seeding customers.."
customer1 = Customer.create(name: 'Nick')
customer2 = Customer.create(name: 'John')

puts "Seeding orders..."
order1 = Order.create(drink: 'Tea', quantity: 3, price: 6, barista_id: barista2.id, customer_id: customer1.id)
order2 = Order.create(drink: 'Coffee', quantity: 6, price: 10, barista_id: barista1.id, customer_id: customer2.id)
order3 = Order.create(drink: 'Beer', quantity: 2, price: 8, barista_id: barista2.id, customer_id: customer1.id)
puts "Finished seeding!"