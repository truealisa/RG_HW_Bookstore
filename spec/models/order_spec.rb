require 'rails_helper'

RSpec.describe Order do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:total_price) }
    it { is_expected.to have_db_column(:state) }
    it { is_expected.to have_db_column(:completed_date) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:credit_card) }
    it { is_expected.to have_many(:order_items).dependent(:destroy) }
    it { is_expected.to have_one(:billing_address) }
    it { is_expected.to have_one(:shipping_address) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:total_price) }
  end
end
