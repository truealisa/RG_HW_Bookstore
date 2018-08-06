class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
