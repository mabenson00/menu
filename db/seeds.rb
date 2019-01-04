# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Rails.env == 'production'
  Main.destroy_all
  Side.destroy_all
  Meal.destroy_all
  10.times do |n|
    main = Main.create!({name: Faker::Food.dish})
    side = Side.create!({name: Faker::Food.vegetables})
    meal = Meal.create
    meal.main = main
    meal.side = side
    meal.name = "#{main.name} with #{side.name}"
    meal.save
  end
end
