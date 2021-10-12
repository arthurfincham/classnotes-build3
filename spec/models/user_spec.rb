require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#validations" do
    it "is valid with valid attributes" do
      user = create(:user)
      expect(user).to be_valid
    end
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
  end

  describe '#associations' do
    it { is_expected.to have_many(:notes) }
  end
end
