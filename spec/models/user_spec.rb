require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with valid attributes" do
    # user = User.new(email: "test@example.com", username: "testuser", password: "password")
    user = create(:user)
    expect(user).to be_valid
  end

  describe "#email" do
    it { should validate_presence_of(:email) }
  end

  describe "#username" do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
  end
end
