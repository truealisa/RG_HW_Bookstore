require 'rails_helper'

RSpec.describe Category do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:title) }
  end

  context 'associations' do
    it { is_expected.to have_many(:book_categories) }
    it { is_expected.to have_many(:books).through(:book_categories) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:title) }
  end

  context 'unique fields' do
    subject { FactoryBot.build(:category) }
    it { is_expected.to validate_uniqueness_of(:title).case_insensitive }
  end
end
