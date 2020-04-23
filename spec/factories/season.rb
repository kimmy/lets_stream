FactoryBot.define do
  factory :season do
    title { Faker::TvShows::RickAndMorty.location }
    plot { Faker::TvShows::RickAndMorty.quote }

    factory :season_with_episodes do
      after(:create) do |season|
        (1..5).each do |number|
          create(:episode, season: season, number: number)
        end
      end
    end
  end
end
