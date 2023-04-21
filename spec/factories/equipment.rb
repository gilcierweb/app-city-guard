# == Schema Information
#
# Table name: equipment
#
#  id         :bigint           not null, primary key
#  kind       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :equipment do
    name { "MyString" }
    kind { 1 }
  end
end
