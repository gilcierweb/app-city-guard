# == Schema Information
#
# Table name: inspections
#
#  id                  :bigint           not null, primary key
#  address_full        :string
#  code                :integer
#  latitude            :decimal(, )
#  longitude           :decimal(, )
#  motive_apprehension :string
#  neighborhood        :string
#  observations        :text
#  situation           :integer
#  status              :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_inspections_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :inspection do
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
