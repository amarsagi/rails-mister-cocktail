# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts 'cleaning database'

Dose.destroy_all
Review.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts 'Making API call'
call = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients = JSON.parse(call)

puts 'Creating ingredients...'
ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts "Finished seeding! You now have #{Ingredient.count} ingredients"

file = URI.open(https://res.cloudinary.com/amarsagi/image/upload/v1587039077/Mister%20Cocktails/Seed%20Photos/cocktail2_cxl6xi.jpg)
cocktail = Cocktail.new(title: 'NES', body: "A great console")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Dose.create(description: '40ml', cocktail: Cocktail.find_by(name: "Mojito"), ingredient: Ingredient.find_by(name: "Spiced rum"))
Dose.create(description: '2 leaves', cocktail: Cocktail.find_by(name: "Mojito"), ingredient: Ingredient.find_by(name: "Lime"))

puts 'Uploading pictures'
