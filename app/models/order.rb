class Order < ApplicationRecord
  belongs_to :user
  belongs_to :credit_card
  has_many :order_items, dependent: :destroy
  has_one :billing_address, as: :addressable, class_name: 'BillingAddress'
  has_one :shipping_address, as: :addressable, class_name: 'ShippingAddress'

  validates :state, presence: true
  validates :total_price, presence: true
end
