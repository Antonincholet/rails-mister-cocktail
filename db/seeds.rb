require 'faker'

puts 'destroy db'
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

some_dose = ['1.5 oz', '4.5 cl', '9 cl', '1.33 oz', '2 cl', '3 cl']

10.times do
  one = Ingredient.create!(name: "#{Faker::Food.unique.fruits}")
  two = Ingredient.create!(name: "#{Faker::Food.unique.fruits}")
  three = Ingredient.create!(name: "#{Faker::Food.unique.fruits}")

  cocktail = Cocktail.create!(name:"#{Faker::BossaNova.unique.song}")
  puts cocktail.name

  Dose.create!(description:"#{Faker::Food.unique.measurement}", cocktail: cocktail, ingredient: one)
  Dose.create!(description:"#{Faker::Food.unique.measurement}", cocktail: cocktail, ingredient: two)
  Dose.create!(description: some_dose.sample, cocktail: cocktail, ingredient: three)
end
puts 'db seed !!'
