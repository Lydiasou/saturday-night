# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
User.destroy_all

user_one = User.create!(
  email: "soulalydia1@gmail.com",
  password: "123456"
)

user_two = User.create!(
  email: "soso@canale.com",
  password: "123456"
)

user_three = User.create!(
  email: "Ylo@gmail.com",
  password: "123456"
)

user_four = User.create!(
  email: "fishfish@gmail.com",
  password: "123456"
)

girls = [user_one, user_two, user_three, user_four]

restaurant_one = Restaurant.new(
  name: "Dalia",
  address: "93 rue Montmartre 75002",
  category: 'Cuisine du monde'
)
restaurant_one.user = girls.sample
restaurant_one.save!

restaurant_two = Restaurant.new(
  name: "Terass'Hôtel",
  address: "12-14 Rue Joseph de Maistre, 75018 Paris",
  category: 'Chic'
)
restaurant_two.user = girls.sample
restaurant_two.save!
