require 'ffaker'

FactoryBot.define do
  factory :user do
    email FFaker::Internet.email
    password FFaker::Lorem.characters(8)
    first_name FFaker::Name.first_name
    last_name FFaker::Name.last_name
  end
end
