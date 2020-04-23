FactoryBot.define do
  factory :purchase_option do
    price { [1.99, 2.5, 2.99, 3.99].sample }
    quality { [:sd, :hd].sample }
  end
end
