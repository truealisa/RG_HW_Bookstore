require 'rails_helper'

RSpec.describe CreditCard, type: :model do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:number) }
    it { is_expected.to have_db_column(:cvv) }
    it { is_expected.to have_db_column(:exp_month) }
    it { is_expected.to have_db_column(:exp_year) }
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
  end

  context 'associations' do
    it { is_expected.to have_many(:orders) }
    it { is_expected.to belong_to(:user) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:cvv) }
    it { is_expected.to validate_presence_of(:exp_month) }
    it { is_expected.to validate_presence_of(:exp_year) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
end
