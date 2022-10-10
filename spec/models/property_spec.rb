require 'rails_helper'
require 'money-rails/test_helpers'

RSpec.describe Property, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:address_1) }
  it { should have_many(:reviews) }
  it { is_expected.to monetize(:price).allow_nil }
end
