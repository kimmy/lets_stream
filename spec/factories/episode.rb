FactoryBot.define do
  factory :episode do
    title { Faker::TvShows::StrangerThings.character }
    plot { Faker::TvShows::StrangerThings.quote }
    sequence(:number) { |n| n }
  end
end
