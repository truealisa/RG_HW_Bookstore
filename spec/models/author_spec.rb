require 'rails_helper'

RSpec.describe Author do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:first_name) }
    it { is_expected.to have_db_column(:last_name) }
    it { is_expected.to have_db_column(:biography) }
  end

  context 'associations' do
    it { is_expected.to have_many(:author_books) }
    it { is_expected.to have_many(:books).through(:author_books) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
end
