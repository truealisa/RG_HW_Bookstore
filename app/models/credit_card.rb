class CreditCard < ApplicationRecord
  has_many :orders
  belongs_to :user

  validates :number, presence: true
  validates :cvv, presence: true
  validates :exp_month, presence: true
  validates :exp_year, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
