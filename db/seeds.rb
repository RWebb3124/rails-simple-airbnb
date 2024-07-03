# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all

20.times do
  Flat.create!(
    {
      name: "#{rand(1..5)} bed flat in #{Faker::Address.city}",
      address: Faker::Address.full_address,
      description: Faker::Lorem.paragraph(sentence_count: 4),
      price_per_night: rand(80..1000),
      number_of_guests: rand(1..6)
    }
  )
end
