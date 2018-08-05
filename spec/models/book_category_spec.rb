require 'rails_helper'

RSpec.describe BookCategory, type: :model do
  it { is_expected.to belong_to(:category) }
  it { is_expected.to belong_to(:book) }
end
