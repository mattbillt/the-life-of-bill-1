# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Match.destroy_all

puts "Creating matches..."
chelsea = {name: "Chelsea V Man City", date:"20th Apr 24", location: "Wembley Stadium, London", competition: "FA Cup", review: "Wasteful Chelsea succumb late on to treble winners City"}
palace = {name: "Crystal Palace V West Ham", date:"21st Apr 24", location: "Selhurst Park, London", competition: "Premier League", review: "West Ham concede 5 in South London"}

[chelsea, palace].each do |attributes|
  match = Match.create!(attributes)
  puts "Created #{match.name}"
end
puts "Finished!"
