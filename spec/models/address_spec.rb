require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:local_address) }
    it { is_expected.to have_db_column(:zipcode) }
    it { is_expected.to have_db_column(:city) }
    it { is_expected.to have_db_column(:phone) }
    it { is_expected.to have_db_column(:country) }
    it { is_expected.to have_db_column(:type) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:local_address) }
    it { is_expected.to validate_presence_of(:zipcode) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:country) }
  end
end
