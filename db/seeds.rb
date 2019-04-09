# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_riders
    riders = [

        ['Dustin', 'Green', 'Hickory Hills', 'IL', 40.00, -105.35],
        ['Jason', 'Finn', 'Huntington Beach', 'CA', 39.95, -105.24],
        ['Howard', 'Thompson', 'Hale', 'MO', 40.06, -105.26],
        ['Maggie', 'Lantz', 'Dublin', 'OH', 40.03, -105.23],
        ['Lawrence', 'Duran', 'Fort Myers', 'FL', 40.04, -105.23],
        ['Irene', 'Molina', 'Tucson', 'AZ', 39.96, -105.22],
        ['Nancy', 'Garner', 'Baltimore', 'MD', 39.98, -105.21],
        ['Tara', 'Taylor', 'Minneapolis', 'MN', 40.00, -105.25],
        ['Alejandro', 'Smith', 'Scarborough', 'ME', 40.02, -105.26],
        ['Tricia', 'Renshaw', 'Mystic', 'CT', 40.02, -105.30],
        ['Travis', 'Cook', 'Twin Lakes', 'WI', 40.01, -105.20],
        ['Joan', 'Brooks', 'Norfolk', 'VA', 39.98, -105.24],
        ['Joseph', 'Rodgers', 'Wayne', 'NJ', 39.99, -105.25],
        ['Matthew', 'Gregson', 'Brashear', 'MO', 40.01, -105.29],
        ['Katie', 'Dunlap', 'Marlon', 'VA', 39.97, -105.27],
        ['Leo', 'Howard', 'Dallas', 'TX', 39.97, -105.33],
        ['Maria', 'Baisden', 'Raleigh', 'NC', 40.00, -105.29],
        ['Sandy', 'Townsend', 'Newport', 'PA', 40.05, -105.30],
        ['Melinda', 'Stephenson', 'Kahului', 'HI', 39.99, -105.31],
        ['Jason', 'Nichols', 'Alexandria', 'VA', 40.01, -105.32]

    ]

    riders.each do |first_name, last_name, city, state, lat, long|
        Rider.create( first_name: first_name, last_name: last_name, city_of_origin: city, state_of_origin: state, latitude: lat, longitude: long )
    end
end 

seed_riders