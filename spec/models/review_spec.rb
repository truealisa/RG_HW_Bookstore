require 'rails_helper'

RSpec.describe Review do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:title) }
    it { is_expected.to have_db_column(:text) }
    it { is_expected.to have_db_column(:status) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:book) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:text) }
  end
end
