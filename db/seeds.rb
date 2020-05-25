# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.create(description: 'Acura Sedan - Dark Grey' , car_type: 'Sedan' , image_url: 'Acura-Sedan.png', price_per_hour: 20)
Car.create(description: 'Audi Sedan - Black' , car_type: 'Sedan' , image_url: 'Audi-Sedan.png', price_per_hour: 20)
Car.create(description: 'BMW Sedan - White' , car_type: 'Sedan' , image_url: 'BMW-Sedan.png', price_per_hour: 20)

Car.create(description: 'Fiat Hatchback - Red' , car_type: 'Hatchback' , image_url: 'Fiat-Hatchback.png', price_per_hour: 10)
Car.create(description: 'Ford hatchback - Rust' , car_type: 'Hatchback' , image_url: 'Ford-Hatchback.png', price_per_hour: 10)
Car.create(description: 'Volkswagen Hatchback - Black' , car_type: 'Hatchback' , image_url: 'Volkswagen-Hatchback.png', price_per_hour: 10)
Car.create(description: 'Cadillac SUV - Black' , car_type: 'SUV' , image_url: 'Cadillac-SUV.png', price_per_hour: 30)
Car.create(description: 'Chevrolet SUV - Grey' , car_type: 'SUV' , image_url: 'Chevrolet-SUV.png', price_per_hour: 30)
Car.create(description: 'Suzuki SUV - Brown' , car_type: 'SUV' , image_url: 'Suzuki-SUV.png', price_per_hour: 30)