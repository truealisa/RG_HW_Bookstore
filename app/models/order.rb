class Order < ApplicationRecord
  belongs_to :user
  belongs_to :credit_card
  has_many :order_items, dependent: :destroy
  has_one :billing_address
  has_one :shipping_address

  validates :state, presence: true
  validates :total_price, presence: true
end
