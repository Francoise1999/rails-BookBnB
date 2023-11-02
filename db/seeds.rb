# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "I clear the database"

Book.delete_all
Booking.delete_all
User.delete_all

puts "Deleted"

puts "Creating books"

10.times do
  Book.create(title: "My book", author: "Me", description: "My first book", category: "Story", year: 2023, price: 19)
end
