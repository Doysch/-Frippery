# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database..."
Costume.destroy_all


  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "He-Man",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "She-Ra",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Wonder Woman",
    user_id: 1
  )
  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Spiderman",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Mankini",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Pimp",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    price: 6,
    name: "Lobster",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Peter Griffin",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Poisin Ivy",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Turd",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Hippy",
    user_id: 1
  )

  Costume.create!(
    location: "London",
    size: "Large",
    address: "16 Villa Gaudelet, Paris",
    price: 6,
    name: "Couples",
    user_id: 1
  )

puts "seeded database!"
