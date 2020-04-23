FactoryBot.define do
  factory :movie do
    title { Faker::Movies::StarWars.planet }
    plot { Faker::Movies::StarWars.quote }
  end
end
