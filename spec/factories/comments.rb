FactoryBot.define do
  factory :comment do
    post { nil }
    text { "MyText" }
    authorable { nil }
  end
end
