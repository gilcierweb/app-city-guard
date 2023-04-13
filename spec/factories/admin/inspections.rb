FactoryBot.define do
  factory :admin_inspection, class: 'Admin::Inspection' do
    code { 1 }
    motive_apprehension { "MyString" }
    address_full { "MyString" }
    latitude { "9.99" }
    longitude { "9.99" }
    neighborhood { "MyString" }
    observations { "MyText" }
    situation { 1 }
    status { false }
    user { nil }
  end
end
