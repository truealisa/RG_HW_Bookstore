class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_one :billing_address, as: :addressable, class_name: 'BillingAddress'
  has_one :shipping_address, as: :addressable, class_name: 'ShippingAddress'

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
