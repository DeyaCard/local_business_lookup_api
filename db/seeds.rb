class Seed

  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    20.times do |i|
      business = Business.create!(
        restaurant: Faker::Restaurant.name
        shop: Faker::Store.name
      )
      puts "Business #{i}: Restaurant is #{business.restaurant} and shop is '#{business.shop}'."
    end
  end
end

Seed.begin