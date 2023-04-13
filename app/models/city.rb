# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  code_ibge  :integer
#  name_en    :string
#  name_es    :string
#  name_pt_BR :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :bigint           not null
#
# Indexes
#
#  index_cities_on_state_id  (state_id)
#
# Foreign Keys
#
#  fk_rails_...  (state_id => states.id)
#
class City < ApplicationRecord
  belongs_to :state
  has_many :vehicles
  def self.select_list()
    self.all.collect { |row| [row.name_pt_BR, row.id] }
  end
end
