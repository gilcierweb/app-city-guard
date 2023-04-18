FactoryBot.define do
  factory :admin_tax, class: 'Admin::Tax' do
    amount { "9.99" }
    kind { 1 }
    status { false }
    user { nil }
  end
end
