# == Schema Information
#
# Table name: brands
#
#  id         :bigint           not null, primary key
#  code       :integer
#  kind       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :brand do
    code { 1 }
    name { "MyString" }
    kind { 1 }
  end
end
