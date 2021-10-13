# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { "testman124@example.org" }
    username { "atestman" }
    password { 'password' }
  end
end
