FactoryBot.define do
  factory :rider do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    city_of_origin { Faker::Address.city }
    state_of_origin { Faker::Address.state_abbr }
    latitude { Faker::Number.decimal(2) }
    longitude { Faker::Number.decimal(3, 2) }
  end
end
