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
require 'rails_helper'

RSpec.describe City, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
