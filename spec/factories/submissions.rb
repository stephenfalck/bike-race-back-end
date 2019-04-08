FactoryBot.define do
  factory :submission do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.safe_email }
    slogan { Faker::TvShows::Friends.quote }
  end
end
