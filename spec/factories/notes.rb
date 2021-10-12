FactoryBot.define do
  factory :note do
    title { "Test Title"}
    date { "2021-01-12" }
    description { "This is a test description written in factory bot." }
    user_id { 1 }
  end
end
