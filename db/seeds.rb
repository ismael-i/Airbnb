# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |index|
    c = City.create(city_name: "City#{index}")
    d = Dog.create(name: "Dog #{(rand(67..92)).chr}", owner_s_dog_name: "Owner #{index}", owner_s_phone_number: "Number: #{rand(1000000000..9999999999)}", city: c)
    ds = Dogsitter.create(first_name: "Nom #{(rand(67..92)).chr}", last_name: "Prenom #{index}", phone_number: "Number: #{rand(1000000000..9999999999)}", city: c)
    s = Stroll.create(date: "#{rand(2000..2019)}-#{rand(1..12)}-#{rand(1..31)}", city: c, dog: d, dogsitter: ds)
end