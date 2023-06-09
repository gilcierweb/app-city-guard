# == Schema Information
#
# Table name: vehicles
#
#  id            :bigint           not null, primary key
#  brand         :string
#  chassi        :string
#  city_name     :string
#  color         :string
#  engine_number :string
#  kind          :integer
#  model         :string
#  plate         :string
#  qualified     :boolean
#  state_name    :string
#  tachometer    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  brand_id      :bigint
#  city_id       :bigint
#  conductor_id  :bigint           not null
#  state_id      :bigint
#
# Indexes
#
#  index_vehicles_on_brand_id      (brand_id)
#  index_vehicles_on_city_id       (city_id)
#  index_vehicles_on_conductor_id  (conductor_id)
#  index_vehicles_on_state_id      (state_id)
#
# Foreign Keys
#
#  fk_rails_...  (brand_id => brands.id)
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (conductor_id => conductors.id)
#  fk_rails_...  (state_id => states.id)
#
FactoryBot.define do
  factory :vehicle do
    kind { 1 }
    brand { "MyString" }
    model { "MyString" }
    color { "MyString" }
    state_name { "MyString" }
    city_name { "MyString" }
    plate { "MyString" }
    tachometer { "MyString" }
    chassi { "MyString" }
    engine_number { "MyString" }
    brand { nil }
    state { nil }
    city { nil }
    conductor { nil }
  end
end
