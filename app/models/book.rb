class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books
  has_many :book_categories
  has_many :categories, through: :book_categories
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
