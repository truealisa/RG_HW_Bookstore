class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books

  validates :first_name, presence: true
  validates :last_name, presence: true
end
