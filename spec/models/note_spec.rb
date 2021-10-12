require 'rails_helper'

RSpec.describe Note, type: :model do
  
  describe "#title" do
    it { should validate_presence_of(:title) }
  end

  describe "#date" do
    it { should validate_presence_of(:date) }
  end

  describe "#description" do
    it { should validate_presence_of(:description) }
  end

  describe "#user_id" do
    it { should validate_presence_of(:user_id) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  it 'is valid with valid attributes' do
    note = create(:note)
    expect(note).to be_valid
  end
end
