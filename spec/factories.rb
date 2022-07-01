FactoryBot.define do
  factory(:business) do
    name {Faker::Restaurant.name}
    description {Faker::Company.profession}
    location {Faker::Address.full_address}
    phone {Faker::PhoneNumber.phone_number}
  end
end
