# == Schema Information
#
# Table name: states
#
#  id           :bigint           not null, primary key
#  abbreviation :string
#  code_ibge    :integer
#  name_en      :string
#  name_es      :string
#  name_pt_BR   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_id   :bigint           not null
#
# Indexes
#
#  index_states_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
FactoryBot.define do
  factory :state do
    code_ibge { 1 }
    abbreviation { "MyString" }
    name_pt_BR { "MyString" }
    name_en { "MyString" }
    name_es { "MyString" }
    country { nil }
  end
end
