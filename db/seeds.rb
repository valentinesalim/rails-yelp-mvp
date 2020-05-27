# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

10.times do
    restaurant = Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address,
        phone_number: Faker::PhoneNumber.phone_number,
        category: Restaurant::CATEGORIES.sample
    )
    rand(4..10).times do
        review = Review.create!(
            content: Faker::Restaurant.name,
            rating: rand(0..5),
            restaurant: restaurant
        )
    end
    puts "Created: #{restaurant.name} | with #{restaurant.reviews.count} reviews…"
end

puts "done"