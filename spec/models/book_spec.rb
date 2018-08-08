require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'db columns presence' do
    it { is_expected.to have_db_column(:title) }
    it { is_expected.to have_db_column(:description) }
    it { is_expected.to have_db_column(:price) }
    it { is_expected.to have_db_column(:quantity) }
    it { is_expected.to have_db_column(:year_of_publication) }
    it { is_expected.to have_db_column(:height) }
    it { is_expected.to have_db_column(:width) }
    it { is_expected.to have_db_column(:depth) }
    it { is_expected.to have_db_column(:materials) }
  end

  context 'associations' do
    it { is_expected.to have_many(:book_categories) }
    it { is_expected.to have_many(:categories).through(:book_categories) }
    it { is_expected.to have_many(:author_books) }
    it { is_expected.to have_many(:authors).through(:author_books) }
    it { is_expected.to have_many(:reviews).dependent(:destroy) }
  end

  context 'required fields' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
  end
end
