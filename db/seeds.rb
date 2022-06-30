class Seed

  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    20.times do |i|
      business = Business.create!(
        name: Faker::Company.name,
        description: Faker::Company.profession,
        location: Faker::Address.full_address,
        phone_number: Faker::PhoneNumber.phone_number #=> "(503)321-4567"
      )
      puts "Business: #{business.name}, description: #{business.description}, location: #{business.location}, phone_number #{business.phone_number}."
    end
  end
end

Seed.begin