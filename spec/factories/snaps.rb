# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :snap do
    description "MyText"
    snap_url "MyString"
    date_taken "2014-03-03"
  end
end
