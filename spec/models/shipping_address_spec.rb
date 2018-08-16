require 'rails_helper'

RSpec.describe ShippingAddress, type: :model do
  it { is_expected.to have_attribute(:type) }
  it { expect(described_class).to be < Address }
end
