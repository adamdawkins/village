FactoryBot.define do
  factory :bank_detail do
    address_1 { "MyString" }
    postcode { "MyString" }
    sort_code { "MyString" }
    account_number { "MyString" }
    sponsor { nil }
  end
end
