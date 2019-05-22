# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.name = 'admin'
  user.email = 'admin@example.com'
  user.admin = true
  user.password = 'password'
  user.password_confirmation = 'password'
end

5.times do |n|
  FactoryBot.create(:user, name: "test_user_#{n}")
end

100.times do |n|
  case n % 4
  when 0 then
    FactoryBot.create(:task, state: :未着手, name: "タイトル_#{n}", user: User.first, owner: User.first)
  when 1 then
    FactoryBot.create(:task, state: :完了, name: "タイトル_#{n}", user: User.second, owner: User.fourth)
  when 2 then
    FactoryBot.create(:task, state: :着手中, name: "タイトル_#{n}", user: User.third, owner: User.fifth)
  when 3 then
    FactoryBot.create(:task, owner: User.first)
  end
end
