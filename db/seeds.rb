# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
	titles = ["Vehicle Toyota Camry", "Scooter Unagi Model 1", "Scooter Racer 200", "Vehicle BMW Z3", "Vehicle Kia Sorento"]
	description = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione sunt, ducimus, maiores voluptas officiis autem modi aut veniam sint necessitatibus praesentium numquam accusamus fuga unde? Deleniti molestias, aut nemo dolore."
	prices = [1000.00, 899.98, 14000.78, 1232.33]
	Product.create(title: titles.sample, description: description, price: prices.sample)
end
