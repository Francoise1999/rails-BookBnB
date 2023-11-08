# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "I clear the database"

Booking.delete_all
Book.delete_all
User.delete_all

puts "Deleted"

puts "Creating users"

user1 = User.create(name: "Vero", email: 'veronique.tureau@gmail.com', password: 'bonjour')
user2 = User.create(name: "Paul", email: 'my.mail@gmail.com', password: 'bonjour')

puts "Creating books"

book1 = Book.create(title: "THE book", author: "Author", description: "This is a nice story", category: "Story", year: 2020, price: 32, user: user1)
book2 = Book.create(title: "Legends", author: "Good person", description: "Nice legends", category: "Story", year: 1900, price: 4, user: user2)

10.times do
  Book.create(title: "My book", author: "Me", description: "My first book", category: "Story", year: 2023, price: 19, user: user1)
end

puts "Creating bookings"

booking1 = Booking.create(date: Date.today, user: user1, book: book1, accepted: false)
booking2 = Booking.create(date: Date.today, user: user2, book: book2, accepted: false)
booking3 = Booking.create(date: Date.today, user: user1, book: book2, accepted: false)
