FactoryBot.define do
  factory :course do
    title { 'a' * 10 }
    description { 'a' * 10 }
    user
    category
  end
end
