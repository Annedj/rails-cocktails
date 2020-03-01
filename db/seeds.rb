# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

puts "Creating the ingredients..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

ingredients = user['drinks']

doses = %w[2cl 3cl 5cl 10cl 2ml 5ml 10ml]

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end

puts "Ingredients created!"

puts "Mixing some cocktails..."

4.times do
  cocktail = Cocktail.create!(name: Faker::Beer.name)
  3.times do
    dose = Dose.create!(description: doses.sample,
                        ingredient: Ingredient.all.sample,
                        cocktail: cocktail)
  end
end

puts "Cocktails served!"
