FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }

    factory :user_with_purchases do
      after(:create) do |user|
        number_of_purchases = Random.rand(5)
        create_list(:purchase, number_of_purchases, user: user)
      end
    end
  end
end
