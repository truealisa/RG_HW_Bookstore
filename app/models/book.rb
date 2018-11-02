class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books
  has_many :book_categories
  has_many :categories, through: :book_categories
  accepts_nested_attributes_for :book_categories, allow_destroy: true
  has_many :reviews, dependent: :destroy

  has_one_attached :cover
  has_many_attached :images

  validates :title, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
