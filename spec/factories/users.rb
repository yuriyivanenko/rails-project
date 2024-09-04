FactoryBot.define do
  factory :user do
    name { "Thomas Roony" }
    email { "tomwillcomeforu@gmail.com.com" }
    password { 'password123' }
    password_confirmation { 'password123' }
    territory
  end
end
