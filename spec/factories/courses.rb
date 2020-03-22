FactoryGirl.define do
  factory :course do
    title 'a' * 20
    description 'a' * 20
    user
    category
  end
end
