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
class State < ApplicationRecord
  belongs_to :country
  has_many :cities

  def self.select_list()
    self.all.collect { |row| [row.name_pt_BR, row.id] }
  end
end
