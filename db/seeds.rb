require 'ffaker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Category.create!([
  { title: 'Web Development' },
  { title: 'Web Design' },
  { title: 'Mobile Development' }
])

author_names = [
  { first: 'John', last: 'Horton' },
  { first: 'Helder', last: 'Vasconcelos' },
  { first: 'Raul', last: 'Portales' },
  { first: 'Andrew', last: 'Retallack' },
  { first: 'Bass', last: 'Jobsen' },
  { first: 'David', last: 'Cochran' },
  { first: 'Ian', last: 'Whitley' },
  { first: 'Paul', last: 'Boag' },
  { first: 'Dan', last: 'Mantyla' },
  { first: 'Jon', last: 'Duckett' },
  { first: 'Alfred', last: 'Nutile' },
  { first: 'Kyle', last: 'Mew' },
  { first: 'Dallas', last: 'Snider' },
  { first: 'Jennifer Niederst', last: 'Robbins' },
  { first: 'Fernando', last: 'Monteiro' },
  { first: 'Sammy', last: 'Spets' },
  { first: 'Web', last: 'community' },
  { first: 'Ethan', last: 'Marcotte' },
  { first: 'Lucian', last: 'Gheorghe' },
  { first: 'Hasin', last: 'Hayder' },
  { first: 'Joao Prado', last: 'Maia' },
  { first: 'Jason', last: 'Beaird' }
]

author_names.each do |name|
  Author.create!({
    first_name: name[:first],
    last_name: name[:last],
    biography: FFaker::Lorem.paragraph
  })
end

book_names = [ 'Android Programming for Beginners',
               'Android Programming for Developers',
               'Arduino to AVR Get Started in 3 Steps',
               'Bootstrap 4 Site Blueprints',
               'Digital Adaptation',
               'Functional Programming in JavaScript',
               'JavaScript&jQuery interactive front-end web development',
               'Laravel 5.x Cookbook',
               'Learning Material Design',
               'Learning SQL Server 2016 Reporting Services',
               'Learning Web Design A Beginners Guide to HTML CSS JavaScript and Web Graphics',
               'Node.js Projects',
               'Programming Drupal 7 Entities',
               'Real-Life Responsive Web Design',
               'Responsive Web Design',
               'Smarty PHP Template Programming and Applications',
               'The Principles of Beautiful Web Design' ]

book_names.each_with_index do |book_name, index|
  book = Book.create({
    title: book_name,
    description: FFaker::Book.description,
    price: rand(10.0..50.0).round(2),
    quantity: rand(0..100),
    year_of_publication: FFaker::Time.date,
    height: rand(6..24),
    width: rand(4..20),
    depth: rand(0.2..4.0).round(1),
    materials: FFaker::Lorem.words(2).join(', ')
  })

  file_id = index + 1
  file_format = if File.file?(Rails.root.join("public/images/#{file_id}.png"))
    'png'
  elsif File.file?(Rails.root.join("public/images/#{file_id}.jpg"))
    'jpg'
  end

  book.cover.attach(io: File.open(Rails.root.join("public/images/#{file_id}.#{file_format}")),
                    filename: "#{file_id}.#{file_format}",
                    content_type: "image/#{file_format}")
  book.save
end

AuthorBook.create!([
  { author_id: 1, book_id: 1 },
  { author_id: 1, book_id: 2 },
  { author_id: 2, book_id: 2 },
  { author_id: 3, book_id: 2 },
  { author_id: 4, book_id: 3 },
  { author_id: 5, book_id: 4 },
  { author_id: 6, book_id: 4 },
  { author_id: 7, book_id: 4 },
  { author_id: 8, book_id: 5 },
  { author_id: 9, book_id: 6 },
  { author_id: 10, book_id: 7 },
  { author_id: 11, book_id: 8 },
  { author_id: 12, book_id: 9 },
  { author_id: 13, book_id: 10 },
  { author_id: 14, book_id: 11 },
  { author_id: 15, book_id: 12 },
  { author_id: 16, book_id: 13 },
  { author_id: 17, book_id: 14 },
  { author_id: 18, book_id: 15 },
  { author_id: 19, book_id: 16 },
  { author_id: 20, book_id: 16 },
  { author_id: 21, book_id: 16 },
  { author_id: 22, book_id: 17 }
])

BookCategory.create!([
  { category_id: 3, book_id: 1 },
  { category_id: 3, book_id: 2 },
  { category_id: 1, book_id: 4 },
  { category_id: 2, book_id: 5 },
  { category_id: 1, book_id: 6 },
  { category_id: 1, book_id: 7 },
  { category_id: 1, book_id: 8 },
  { category_id: 2, book_id: 9 },
  { category_id: 1, book_id: 10 },
  { category_id: 2, book_id: 11 },
  { category_id: 1, book_id: 12 },
  { category_id: 1, book_id: 13 },
  { category_id: 2, book_id: 14 },
  { category_id: 2, book_id: 15 },
  { category_id: 1, book_id: 16 },
  { category_id: 2, book_id: 17 }
])

User.create!([
  { email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password',
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name }
])
