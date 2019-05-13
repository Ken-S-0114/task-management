FactoryBot.define do
  factory :task do
    name { 'テストを書く' }
    description { 'RSpec & Capybara & FactoryBot を準備する' }
    association :user, factory: admin_user
  end
end
