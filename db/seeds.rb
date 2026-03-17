# Clear existing data
puts "Cleaning database..."
Review.destroy_all
Restaurant.destroy_all
Landmark.destroy_all

# Source 1: Faker gem - Restaurants
puts "Creating restaurants with Faker..."
cuisines = ["Italian", "Chinese", "Mexican", "Japanese", "French", "Thai", "Indian", "Greek", "Spanish", "Vietnamese"]
price_ranges = ["$", "$$", "$$$", "$$$$"]

30.times do |i|
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    cuisine: cuisines.sample,
    address: Faker::Address.full_address,
    price_range: price_ranges.sample,
    rating: rand(3.0..5.0).round(1)
  )
  print "." if i % 5 == 0
end

puts "\nCreated #{Restaurant.count} restaurants"

# Source 1: Faker gem - Landmarks
puts "\nCreating landmarks with Faker..."
categories = ["Park", "Museum", "Monument", "Historic Site", "Statue", "Garden", "Bridge", "Castle"]

20.times do |i|
  landmark = Landmark.create!(
    name: ["The", Faker::Name.last_name, Faker::Address.city].sample(2).join(" "),
    category: categories.sample,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 5)
  )
  print "." if i % 5 == 0
end

puts "\nCreated #{Landmark.count} landmarks"

# Source 1: Faker gem - Reviews
puts "\nCreating reviews with Faker..."

# Add reviews to restaurants
Restaurant.all.each do |restaurant|
  rand(1..8).times do
    Review.create!(
      reviewable: restaurant,
      rating: rand(1..5),
      comment: Faker::Restaurant.review,
      user_name: Faker::Name.name
    )
  end
  print "."
end

# Add reviews to landmarks
Landmark.all.each do |landmark|
  rand(1..5).times do
    Review.create!(
      reviewable: landmark,
      rating: rand(1..5),
      comment: Faker::Lorem.paragraph(sentence_count: 2),
      user_name: Faker::Name.name
    )
  end
  print "."
end

puts "\nCreated #{Review.count} reviews"

# Source 2: CSV (will implement later)
puts "\n"
puts "=" * 50
puts "SEEDING COMPLETE!"
puts "=" * 50
puts "Total records created:"
puts "Restaurants: #{Restaurant.count}"
puts "Landmarks: #{Landmark.count}"
puts "Reviews: #{Review.count}"
puts "TOTAL: #{Restaurant.count + Landmark.count + Review.count}"# Seed data for CityExplorer - Faker, CSV, and JSON sources
