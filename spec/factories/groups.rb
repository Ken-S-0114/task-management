# frozen_string_literal: true

FactoryBot.define do
  factory :group do
    sequence(:name) { |n| "team_#{n}" }
  end
end
