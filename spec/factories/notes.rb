# frozen_string_literal: true

FactoryBot.define do
  factory :note do
    title { 'Test Title' }
    date { '2021-01-12' }
    partner { 'Test Partner' }
    technique { 'This is a test technique written in factory bot.' }
    sparring { 'This is a test sparring written in factory bot.' }
    user_id { 1 }
    user { create(:user) }
  end
end
