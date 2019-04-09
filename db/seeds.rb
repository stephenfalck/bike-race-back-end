# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_riders
    Rider.create( first_name: 'Dustin', last_name: 'Green', city_of_origin: 'Hickory Hills', state_of_origin: 'IL', latitude: 40.00, longitude: -105.35 )
end 

seed_riders