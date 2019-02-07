# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { 'pikachu@mail.com' }
    password { 'pikapika' }
  end
end
