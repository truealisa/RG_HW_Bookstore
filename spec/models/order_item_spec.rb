require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:price) }
    it { is_expected.to have_db_column(:quantity) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:book) }
    it { is_expected.to belong_to(:order) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
  end
end
