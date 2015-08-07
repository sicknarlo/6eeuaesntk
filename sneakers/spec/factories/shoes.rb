# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shoe do
    brand "MyString"
    model "MyString"
    year 1
    purchase_date "2015-08-07 16:19:18"
    user nil
  end
end
