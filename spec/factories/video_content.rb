FactoryBot.define do
  factory :video_content do
    title { Faker::Movies::HarryPotter.book }
    plot { Faker::Movies::HarryPotter.quote }
  end
end
