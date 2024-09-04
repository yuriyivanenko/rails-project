FactoryBot.define do
  factory :transaction do
    description { "Test Transaction" }
    amount { 149.00 }
    date { Date.today }
    installer
    territory
    project
  end
end
