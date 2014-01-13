# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feedback do
    name "MyString"
    email "MyString"
    feedback "MyString"
    devices 1
    orgId 1
    url "MyString"
  end
end
