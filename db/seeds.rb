# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.create(description: 'Mazda 3 in Red available for rent.' , car_type: 'Sedan' , image_url: 'Mazda-3-Sedan.jpeg', price_per_hour: 20)
Car.create(description: 'Toyota Vios in Grey available for rent.' , car_type: 'Sedan' , image_url: 'vios.jpeg', price_per_hour: 20)
Car.create(description: 'Porsche in Silver available for rent.' , car_type: 'Sedan' , image_url: 'porsche-Sedan.jpeg', price_per_hour: 20)
Car.create(description: 'Nissan-GTR in White available for rent.' , car_type: 'Sedan' , image_url: 'GTR-SEDAN.jpeg', price_per_hour: 20)
Car.create(description: 'Audi-A3 in Blue available for rent.' , car_type: 'Hatchback' , image_url: 'A3-Hatchback.jpeg', price_per_hour: 10)
Car.create(description: 'Wolkswagen-Golf in Yellow available for rent.' , car_type: 'Hatchback' , image_url: 'Golf-Hatchback.jpeg', price_per_hour: 10)
Car.create(description: 'Honda Civic in White available for rent.' , car_type: 'Hatchback' , image_url: 'Civic-Hatchback.jpeg', price_per_hour: 10)
Car.create(description: 'Chevrolet in Black available for rent.' , car_type: 'SUV' , image_url: 'Chevrolet-SUV.jpeg', price_per_hour: 30)
Car.create(description: 'Range Rover in White available for rent.' , car_type: 'SUV' , image_url: 'RangeRover-SUV.jpeg', price_per_hour: 30)
Car.create(description: 'Lamborghini Urus in Yellow available for rent.' , car_type: 'SUV' , image_url: 'Lamborghini-SUV.jpeg', price_per_hour: 30)