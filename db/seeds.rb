# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require_relative '../config/application'
require_relative '../app/models/pizza'
require_relative '../app/models/restaurant'
require_relative '../app/models/restaurant_pizza'

restaurant1 = Restaurant.create(name: 'Pizza poa', address: 'Ngong Road')
restaurant2 = Restaurant.create(name: 'Utamu Piza', address: 'Thika Road')
restaurant3 = Restaurant.create(name: 'Mamma Mia Pizza', address: 'Naivasha Road')

# Create some pizzas
pizza1 = Pizza.create(name: 'chicken', ingredients: 'Tomato sauce, onions, chicken')
pizza2 = Pizza.create(name: 'beef', ingredients: 'Pinapple, tomatoes, beef')
pizza3 = Pizza.create(name: 'Nyamachoma', ingredients: 'chicken, cheese, Nyamachoma')

# Associate pizzas with restaurants
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza1)
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza2)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza2)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza3)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza1)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza3)