# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning everything"
Tweet.destroy_all
User.destroy_all
puts "Everything cleaned"

puts "Creating an user"

user = User.new(
  email: "User1@gmail.com",
  password: "secret",
  username: "Steven Grant",
  account_name: "@StvnG",
  avatar: Faker::Avatar.image(size: "50x50")
)
user.save!
puts "User created"
