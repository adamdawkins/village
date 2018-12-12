FactoryBot.define do
  factory :sponsorship do
    sponsor { nil }
    child { nil }
    address_1 { "MyString" }
    postcode { "MyString" }
    country { "MyString" }
    account_number { "MyString" }
    sort_code { "MyString" }
  end
end
