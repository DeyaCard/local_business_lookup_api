FactoryBot.define do
  factory(:business) do
    restaurant {Faker::Restaurant.name}
    shop {Faker::Shop.name}
  end
end
