require 'ffaker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.create!([
  { title: 'Web Development' },
  { title: 'Web Design' },
  { title: 'Mobile Development' }
])

20.times do
  Author.create!([
    { first_name: FFaker::Name.first_name,
      last_name: FFaker::Name.last_name,
      biography: FFaker::Lorem.paragraph }
  ])
end

25.times do
  Book.create!([
    { title: FFaker::Book.title,
      description: FFaker::Book.description,
      price: rand(10.0..50.0).round(2),
      quantity: rand(0..100),
      year_of_publication: FFaker::Time.date,
      height: rand(6..24),
      width: rand(4..20),
      depth: rand(0.2..4.0).round(1),
      materials: FFaker::Lorem.words(2) }
  ])
end

User.create!([
  { email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password',
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name }
])
