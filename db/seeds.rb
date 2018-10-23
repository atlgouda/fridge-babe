# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fridge.destroy_all

kitchen = Fridge.create(
    location: "Kitchen",
    brand: "GE",
    size: 50
)

upstairs = Fridge.create(
    location: "Basement",
    brand: "Not GE",
    size: 90
)

pizza = Food.create(
    name: "pizza",
    pounds: 3,
    vegan: false,
    timestamp: "last Friday"
)