# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title 'MyString'
    text 'MyText'
    privacy false
    user nil
  end
end
