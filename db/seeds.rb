# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create(name: "rhum")
Ingredient.create(name: "ice")
Ingredient.create(name: "campari")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Spritz")
Cocktail.create(name: "White russian")

Dose.create(description: "Add 5cl of good agricol rhum from Reunion Island")
Dose.create(description: "Add 3 big spoons of smashed ice!")
Dose.create(description: "Add 10cl of Campari, before spumante")
