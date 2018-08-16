require 'rails_helper'

RSpec.describe User, type: :model do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:email) }
    it { is_expected.to have_db_column(:encrypted_password) }
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
  end

  context 'associations' do
    it { is_expected.to have_many(:reviews).dependent(:destroy) }
    it { is_expected.to have_many(:orders).dependent(:destroy) }
    it { is_expected.to have_one(:billing_address).class_name('BillingAddress') }
    it { is_expected.to have_one(:shipping_address).class_name('ShippingAddress') }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  context 'unique fields' do
    subject { FactoryBot.build(:user) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
