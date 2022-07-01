class Seed

  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    20.times do |i|
      business = Business.create!(
        name: Faker::Company.name,
        description: Faker::Company.buzzword,
        location: Faker::Address.full_address,
        phone: Faker::PhoneNumber.phone_number,
      )
      puts "Business: #{business.name}, description: #{business.description}, location: #{business.location}, phone #{business.phone_number}."
    end
  end
end

Seed.begin
