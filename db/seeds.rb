# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all 
Specialist.destroy_all 
Viewing.destroy_all 
Gallerylocation.destroy_all


5.times do 
User.create!(name: Faker::Movies::Lebowski.character)
end 

5.times do 
Specialist.create!(name: Faker::Movies::Departed.character, bio: Faker::Quotes::Shakespeare.hamlet_quote, speciality: Faker::Games::Zelda.game)
end 

5.times do
Gallerylocation.create!(name: Faker::Games::Witcher.witcher, location: Faker::Games::Witcher.location)
 end 

5.times do
Artwork.create!(name: Faker::Games::Fallout.character, size: "10 + 10", medium: "art", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)
end 

5.times do 
Viewing.create!(time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) , day: Faker::Date.forward(days: 23), artwork_id: Artwork.all.sample.id, user_id: User.all.sample.id, comments: Faker::Movies::BackToTheFuture.quote)
end 
