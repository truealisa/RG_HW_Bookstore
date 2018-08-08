require 'rails_helper'

RSpec.describe BillingAddress, type: :model do
  it { is_expected.to have_attribute(:type) }
  it 'inherits from Address' do
    is_expected.to be_a_kind_of Address
  end
end
