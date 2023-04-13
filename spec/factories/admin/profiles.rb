FactoryBot.define do
  factory :admin_profile, class: 'Admin::Profile' do
    first_name { "MyString" }
    last_name { "MyString" }
    full_name { "MyString" }
    nickname { "MyString" }
    cpf { 1 }
    number { 1 }
    bio { "MyText" }
    birthday { "2023-04-13" }
    avatar { "MyString" }
    status { false }
    user { nil }
  end
end
