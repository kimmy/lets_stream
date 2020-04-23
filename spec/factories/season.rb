FactoryBot.define do
  factory :season do
    title { Faker::TvShows::RickAndMorty.location }
    plot { Faker::TvShows::RickAndMorty.quote }
  end
end
